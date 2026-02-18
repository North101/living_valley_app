import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers.dart';

class DefaultAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const DefaultAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final resource = ref.watch(resourceProvider);
    return AppBar(
      title: Text(resource.title),
      actions: [
        IconButton(
          onPressed: () => ref.read(searchProvider.notifier).set(''),
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const .fromHeight(kToolbarHeight);
}
