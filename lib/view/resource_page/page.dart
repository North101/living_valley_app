import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/constants.dart';
import '/providers.dart';
import '/resources.dart';
import 'appbar.dart';
import 'body.dart';
import 'providers.dart';

class ResourcePage extends ConsumerWidget {
  const ResourcePage({
    required this.resourceId,
    required this.title,
    required this.anchor,
    required this.lookup,
    super.key,
  });

  final String resourceId;
  final String? title;
  final String? anchor;
  final List<ResourceLink> lookup;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = this.title;
    final resource = ref.watch(readResourceProvider(resourceId, lookup));
    return resource.when(
      loading: () => Scaffold(
        appBar: AppBar(
          title: title != null ? Text(title) : const Text(appTitle),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stackTrace) {
        debugPrintStack(stackTrace: stackTrace);
        return Scaffold(
          appBar: AppBar(
            title: title != null ? Text(title) : const Text(appTitle),
          ),
          body: SingleChildScrollView(
            child: Text(
              error.toString(),
              style: const .new(color: Colors.redAccent),
            ),
          ),
        );
      },
      data: (resource) => ProviderScope(
        overrides: [
          searchProvider.overrideWithBuild((ref, provider) => null),
          resourceProvider.overrideWith((ref) => resource),
          anchorProvider.overrideWith((ref) => anchor),
        ],
        child: const Scaffold(
          appBar: ResourceAppBar(),
          body: ResourceBody(),
        ),
      ),
    );
  }
}
