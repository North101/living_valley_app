import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../content.dart';
import '../page.dart';
import '../providers.dart';

class DefaultBody extends ConsumerWidget {
  const DefaultBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resource = ref.watch(resourceProvider);
    final anchor = ref.watch(anchorProvider);
    return switch (resource.content != null) {
      true => ResourceContentWidget(
        resource: resource,
        anchor: anchor,
      ),
      false => const ResourceLinkList(),
    };
  }
}

class ResourceLinkList extends ConsumerWidget {
  const ResourceLinkList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final withinReach = ref.watch(withinReachProvider);
    return withinReach.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stackTrace) {
        debugPrintStack(stackTrace: stackTrace);
        return SingleChildScrollView(
          child: Text(
            error.toString(),
            style: const .new(color: Colors.redAccent),
          ),
        );
      },
      data: (withinReach) => ListView(
        children: [
          for (final link in withinReach)
            Padding(
              padding: const EdgeInsetsGeometry.symmetric(horizontal: 8, vertical: 4),
              child: FilledButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResourcePage(
                      resourceId: link.id,
                      title: link.title,
                      anchor: null,
                    ),
                  ),
                ),
                child: Text(
                  link.title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
