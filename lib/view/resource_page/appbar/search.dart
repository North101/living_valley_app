import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/search_theme.dart';
import '../providers.dart';

class SearchAppBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const SearchAppBar({
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SearchAppBarState();

  @override
  Size get preferredSize => const .fromHeight(kToolbarHeight);
}

class SearchAppBarState extends ConsumerState<SearchAppBar> {
  final _controller = TextEditingController();
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final theme = SearchTheme.of(context);
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => ref.read(searchProvider.notifier).clear(),
      child: Theme(
        data: theme,
        child: AppBar(
          title: TextFormField(
            autofocus: true,
            focusNode: _focusNode,
            controller: _controller,
            style: theme.textTheme.titleLarge,
            textInputAction: .search,
            decoration: const .new(hintText: 'Search'),
            onChanged: (value) => ref.read(searchProvider.notifier).set(value),
          ),
          actions: [
            IconButton(
              onPressed: () => ref.read(searchProvider.notifier).clear(),
              icon: const Icon(Icons.clear),
            ),
          ],
        ),
      ),
    );
  }
}
