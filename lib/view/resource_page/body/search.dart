import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/resources.dart';
import '../page.dart';
import '../providers.dart';

class SearchBody extends ConsumerWidget {
  const SearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchLinks = ref.watch(searchLinksProvider);
    return searchLinks.when(
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
      data: (searchLinks) => ListView(
        children: [
          if (searchLinks.withinReach.isNotEmpty) const ResourceLinkHeader(title: 'Within Reach'),
          for (final link in searchLinks.withinReach) ResourceLinkTile(link: link),
          if (searchLinks.alongTheWay.isNotEmpty) const ResourceLinkHeader(title: 'Along the Way'),
          for (final link in searchLinks.alongTheWay) ResourceLinkTile(link: link),
          if (searchLinks.surroundings.isNotEmpty) const ResourceLinkHeader(title: 'Surroundings'),
          for (final link in searchLinks.surroundings) ResourceLinkTile(link: link),
        ],
      ),
    );
  }
}

class ResourceLinkHeader extends StatelessWidget {
  final String title;

  const ResourceLinkHeader({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      color: Theme.of(context).focusColor,
      child: ListTile(
        enabled: false,
        title: Text(title),
      ),
    );
  }
}

class ResourceLinkTile extends ConsumerWidget {
  const ResourceLinkTile({
    required this.link,
    super.key,
  });

  final ResourceLinkSearch link;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(link.title),
      subtitle: Text(link.parents),
      onTap: () async {
        ref.read(searchProvider.notifier).clear();

        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResourcePage(
              resourceId: link.id,
              title: link.title,
              anchor: null,
            ),
          ),
        );
      },
    );
  }
}
