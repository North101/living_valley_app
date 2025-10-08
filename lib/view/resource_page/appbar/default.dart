import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

import '../providers.dart';

@Dependencies([resource, canSearch, SearchNotifier])
class DefaultAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resource = ref.watch(resourceProvider);
    final canSearch = ref.watch(canSearchProvider);
    return AppBar(
      title: Text(resource.title),
      actions: [
        if (canSearch)
          IconButton(
            onPressed: () => ref.read(searchProvider.notifier).set(''),
            icon: const Icon(Icons.search),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
