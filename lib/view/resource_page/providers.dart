import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/providers.dart';
import '/resources.dart';

part 'providers.g.dart';

@Riverpod(dependencies: [])
class SearchNotifier extends _$SearchNotifier {
  @override
  String? build() => null;

  String? get get => state;

  void set(String value) {
    state = value;
  }

  void clear() {
    state = null;
  }
}

@Riverpod(dependencies: [SearchNotifier])
bool isSearching(Ref ref) {
  return ref.watch(searchProvider) != null;
}

@Riverpod(dependencies: [SearchNotifier])
String normalizedSearch(Ref ref) {
  final search = ref.watch(searchProvider);
  return search?.toLowerCase().trim() ?? '';
}

@Riverpod(dependencies: [])
Resource resource(Ref ref) => throw UnimplementedError();

@Riverpod(
  dependencies: [
    resource,
  ],
)
List<String> resourceParts(Ref ref) {
  final resourceId = ref.watch(resourceProvider).id;
  return resourceId.isNotEmpty ? resourceId.substring(1).split('/') : const [];
}

@Riverpod(
  dependencies: [
    normalizedSearch,
    readLookup,
    resourceParts,
  ],
)
Future<Iterable<ResourceLinkSearch>> listFilteredLookup(Ref ref) async {
  final resourceParts = ref.watch(resourcePartsProvider);
  final search = ref.watch(normalizedSearchProvider);
  final lookup = await ref.watch(readLookupProvider.future);

  return lookup //
      .where((e) => search.isEmpty || e.normalizedTitle.contains(search))
      .sorted((a, b) {
        final aCommon = commonPrefixLength(resourceParts, a.parts);
        final bCommon = commonPrefixLength(resourceParts, b.parts);

        final bPriority = sortPriority(resourceParts, b.parts, bCommon).priority;
        final aPriority = sortPriority(resourceParts, a.parts, aCommon).priority;
        if (aPriority != bPriority) {
          return aPriority.compareTo(bPriority);
        }

        final aDistance = (resourceParts.length - aCommon).abs();
        final bDistance = (resourceParts.length - bCommon).abs();
        if (aDistance != bDistance) {
          return aDistance.compareTo(bDistance);
        }

        final aSearch = a.normalizedTitle.startsWith(search);
        final bSearch = b.normalizedTitle.startsWith(search);
        if (search.isNotEmpty && aSearch != bSearch) {
          return aSearch ? -1 : 1;
        }
        return a.index.compareTo(b.index);
      });
}

@Riverpod(
  dependencies: [
    listFilteredLookup,
    normalizedSearch,
    resourceParts,
  ],
)
Future<List<ResourceLinkSearch>> withinReach(Ref ref) async {
  final resourceParts = ref.watch(resourcePartsProvider);
  final search = ref.watch(normalizedSearchProvider);
  final lookup = await ref.watch(listFilteredLookupProvider.future);

  if (search.isEmpty) {
    return lookup //
        .where((e) {
          final common = commonPrefixLength(resourceParts, e.parts);
          final priority = sortPriority(resourceParts, e.parts, common);
          return priority == .child;
        })
        .toList();
  }
  return lookup //
      .where((e) {
        final common = commonPrefixLength(resourceParts, e.parts);
        final priority = sortPriority(resourceParts, e.parts, common);
        return priority == .child || priority == .desendent;
      })
      .toList();
}

@Riverpod(
  dependencies: [
    listFilteredLookup,
    normalizedSearch,
    resourceParts,
    withinReach,
  ],
)
Future<List<ResourceLinkSearch>> alongTheWay(Ref ref) async {
  final resourceParentParts = ref.watch(
    resourcePartsProvider.select((e) => e.isNotEmpty ? e.take(e.length - 1).toList() : e),
  );
  final search = ref.watch(normalizedSearchProvider);
  final lookup = await ref.watch(listFilteredLookupProvider.future);

  final withinReach = await ref.watch(withinReachProvider.future);
  if (search.isEmpty) {
    return lookup //
        .where((e) => !withinReach.contains(e))
        .where((e) {
          final common = commonPrefixLength(resourceParentParts, e.parts);
          final priority = sortPriority(resourceParentParts, e.parts, common);
          return priority == .child;
        })
        .toList();
  }
  return lookup //
      .where((e) => !withinReach.contains(e))
      .where((e) {
        final common = commonPrefixLength(resourceParentParts, e.parts);
        final priority = sortPriority(resourceParentParts, e.parts, common);
        return priority == .child || priority == .desendent;
      })
      .toList();
}

@Riverpod(
  dependencies: [
    alongTheWay,
    listFilteredLookup,
    normalizedSearch,
    resource,
    withinReach,
  ],
)
Future<List<ResourceLinkSearch>> surroundings(Ref ref) async {
  final search = ref.watch(normalizedSearchProvider);
  if (search.isEmpty) {
    return const [];
  }

  final lookup = await ref.watch(listFilteredLookupProvider.future);
  final withinReach = await ref.watch(withinReachProvider.future);
  final alongTheWay = await ref.watch(alongTheWayProvider.future);
  return lookup //
      .where((e) => !withinReach.contains(e))
      .where((e) => !alongTheWay.contains(e))
      .toList();
}

@Riverpod(
  dependencies: [
    alongTheWay,
    surroundings,
    withinReach,
  ],
)
Future<
  ({
    Iterable<ResourceLinkSearch> withinReach,
    Iterable<ResourceLinkSearch> alongTheWay,
    Iterable<ResourceLinkSearch> surroundings,
  })
>
searchLinks(Ref ref) async {
  final withinReach = await ref.watch(withinReachProvider.future);
  final alongTheWay = await ref.watch(alongTheWayProvider.future);
  final surroundings = await ref.watch(surroundingsProvider.future);
  return (
    withinReach: withinReach,
    alongTheWay: alongTheWay,
    surroundings: surroundings,
  );
}

int commonPrefixLength(List<String> x, List<String> y) {
  int i;
  for (i = 0; i < x.length && i < y.length; i++) {
    if (x[i] != y[i]) return i;
  }
  return i;
}

bool isChild(List<String> currentParts, List<String> parts, int common) =>
    common == currentParts.length && parts.length > currentParts.length;

bool isDirectChild(List<String> currentParts, List<String> parts) => parts.length == currentParts.length + 1;

bool isAncestor(List<String> currentParts, List<String> parts, int common) =>
    common == parts.length && parts.length < currentParts.length;

enum Priority {
  desendent(0),
  child(0),
  parent(1),
  ancestor(2),
  other(3)
  ;

  const Priority(this.priority);

  final int priority;
}

Priority sortPriority(List<String> currentParts, List<String> parts, int common) {
  if (isChild(currentParts, parts, common)) {
    return isDirectChild(currentParts, parts) ? .child : .desendent;
  } else if (isAncestor(currentParts, parts, common)) {
    return .ancestor;
  } else if (common == 0) {
    return .other;
  }
  return .parent;
}

@Riverpod(dependencies: [])
String? anchor(Ref ref) => throw UnimplementedError();
