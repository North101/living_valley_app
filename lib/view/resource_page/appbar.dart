import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

import 'appbar/default.dart';
import 'appbar/search.dart';
import 'providers.dart';

@Dependencies([
  isSearching,
  SearchNotifier,
  resource,
  canSearch,
])
class ResourceAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const ResourceAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSearching = ref.watch(isSearchingProvider);
    return isSearching ? const SearchAppBar() : const DefaultAppBar();
  }

  @override
  Size get preferredSize => const .fromHeight(kToolbarHeight);
}
