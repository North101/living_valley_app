import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

import '/resources.dart';
import '../page.dart';
import '../providers.dart';
import '../content.dart';

@Dependencies([
  resource,
  anchor,
  relativeLinks,
])
class DefaultBody extends ConsumerWidget {
  const DefaultBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resource = ref.watch(resourceProvider);
    final anchor = ref.watch(anchorProvider);
    return switch (resource) {
      Resource(content: final content?) => ResourceContentWidget(
        resource: resource,
        anchor: anchor,
        content: content,
      ),
      _ => const ResourceLinkList(),
    };
  }
}

@Dependencies([
  resource,
  relativeLinks,
])
class ResourceLinkList extends ConsumerWidget {
  const ResourceLinkList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resource = ref.watch(resourceProvider);
    final relativeLinks = ref.watch(relativeLinksProvider);
    return ListView(
      children: [
        for (final link in relativeLinks)
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
                    lookup: resource.lookup,
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
    );
  }
}
