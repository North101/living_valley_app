import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

import '/resources.dart';
import '../page.dart';
import '../providers.dart';

@Dependencies([
  relativeLinks,
  lookupLinks,
  resource,
  SearchNotifier,
])
class SearchBody extends ConsumerWidget {
  const SearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resouceLinks = ref.watch(relativeLinksProvider);
    final lookupLinks = ref.watch(lookupLinksProvider);
    return ListView(
      children: [
        if (resouceLinks.isNotEmpty)
          Material(
            elevation: 1,
            color: Theme.of(context).focusColor,
            child: const ListTile(
              enabled: false,
              title: Text('Within Reach'),
            ),
          ),
        for (final link in resouceLinks) ResourceLinkTile(link: link),
        if (lookupLinks.isNotEmpty)
          Material(
            elevation: 1,
            color: Theme.of(context).focusColor,
            child: const ListTile(
              enabled: false,
              title: Text('Along the way'),
            ),
          ),
        for (final link in lookupLinks) ResourceLinkTile(link: link),
      ],
    );
  }
}

@Dependencies([
  resource,
  SearchNotifier,
])
class ResourceLinkTile extends ConsumerWidget {
  const ResourceLinkTile({
    required this.link,
    super.key,
  });

  final ResourceLink link;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(link.title),
      onTap: () {
        final resource = ref.read(resourceProvider);
        ref.read(searchProvider.notifier).clear();

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResourcePage(
              resourceId: link.id,
              title: link.title,
              anchor: null,
              lookup: resource.lookup,
            ),
          ),
        );
      },
    );
  }
}
