import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/providers.dart';
import '/resources.dart';

part 'providers.g.dart';

@Riverpod(dependencies: [])
class SearchNotifier extends _$SearchNotifier {
  @override
  String? build() => null;

  String? get() => state;

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

@Riverpod(dependencies: [])
Resource resource(Ref ref) => throw UnimplementedError();

@Riverpod(dependencies: [])
String? anchor(Ref ref) => throw UnimplementedError();

bool matchesSearch(ResourceLink link, String search) {
  return search.isEmpty || link.title.toLowerCase().contains(search);
}

@Riverpod(
  dependencies: [
    SearchNotifier,
    resource,
  ],
)
Future<List<ResourceLink>> withinReach(Ref ref) async {
  final search = (ref.watch(searchProvider) ?? '').toLowerCase();
  final resource = ref.watch(resourceProvider);
  final lookup = await ref.watch(readLookupProvider.future);

  if (search.isEmpty) {
    if (resource.id.isEmpty) {
      return lookup //
          .where((e) => !e.id.contains('/'))
          .toList();
    }
    return lookup //
        .where((e) => e.id.startsWith('${resource.id}/'))
        .where((e) => !e.id.removePrefix('${resource.id}/').contains('/'))
        .toList();
  }
  return lookup //
      .where((e) => e.id.startsWith('${resource.id}/'))
      .where((e) => matchesSearch(e, search))
      .toList();
}

@Riverpod(
  dependencies: [
    SearchNotifier,
    resource,
    withinReach,
  ],
)
Future<List<ResourceLink>> alongTheWay(Ref ref) async {
  final search = (ref.watch(searchProvider) ?? '').toLowerCase();
  final resource = ref.watch(resourceProvider);
  final lookup = await ref.watch(readLookupProvider.future);
  final withinReach = await ref.watch(withinReachProvider.future);
  final resourceParentId = resource.id.contains('/')
      ? resource.id.substring(0, resource.id.lastIndexOf('/'))
      : resource.id;
  if (search.isEmpty) {
    return lookup
        .where((e) => !withinReach.contains(e))
        .where((e) => e.id.startsWith('$resourceParentId/'))
        .where((e) => !e.id.removePrefix('$resourceParentId/').contains('/'))
        .toList();
  }
  return lookup
      .where((e) => !withinReach.contains(e))
      .where((e) => e.id.startsWith('$resourceParentId/'))
      .where((e) => matchesSearch(e, search))
      .toList();
}

@Riverpod(
  dependencies: [
    SearchNotifier,
    resource,
    withinReach,
    alongTheWay,
  ],
)
Future<List<ResourceLink>> surroundings(Ref ref) async {
  final search = (ref.watch(searchProvider) ?? '').toLowerCase();
  if (search.isEmpty) {
    return const [];
  }

  final lookup = await ref.watch(readLookupProvider.future);
  final withinReach = await ref.watch(withinReachProvider.future);
  final alongTheWay = await ref.watch(alongTheWayProvider.future);
  return lookup
      .where((e) => !withinReach.contains(e))
      .where((e) => !alongTheWay.contains(e))
      .where((e) => matchesSearch(e, search))
      .toList();
}

@Riverpod(
  dependencies: [
    withinReach,
    alongTheWay,
    surroundings,
  ],
)
Future<
  ({
    List<ResourceLink> withinReach,
    List<ResourceLink> alongTheWay,
    List<ResourceLink> surroundings,
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

extension StringPrefix on String {
  String removePrefix(String prefix) => startsWith(prefix) ? substring(prefix.length) : this;
}
