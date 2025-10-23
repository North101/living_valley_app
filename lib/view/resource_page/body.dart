import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

import 'body/default.dart';
import 'body/search.dart';
import 'providers.dart';

@Dependencies([
  isSearching,
  relativeLinks,
  lookupLinks,
  resource,
  SearchNotifier,
  anchor,
])
class ResourceBody extends ConsumerWidget {
  const ResourceBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: switch (ref.watch(isSearchingProvider)) {
        true => const SearchBody(),
        false => const DefaultBody(),
      },
    );
  }
}
