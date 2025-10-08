import 'package:riverpod_annotation/riverpod_annotation.dart';

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

@Riverpod(dependencies: [relativeLinks, lookupLinks])
bool canSearch(Ref ref) {
  final relativeLinks = ref.watch(relativeLinksProvider);
  final lookupLinks = ref.watch(lookupLinksProvider);

  return relativeLinks.isNotEmpty || lookupLinks.isNotEmpty;
}

@Riverpod(dependencies: [])
Resource resource(Ref ref) => throw UnimplementedError();

@Riverpod(dependencies: [])
String? anchor(Ref ref) => throw UnimplementedError();

@Riverpod(dependencies: [SearchNotifier, resource])
Iterable<ResourceLink> relativeLinks(Ref ref) {
  final search = (ref.watch(searchProvider) ?? '').toLowerCase();
  final resource = ref.watch(resourceProvider);
  final links = resource.links;
  return links.where((e) => search.isEmpty || e.title.toLowerCase().startsWith(search));
}

@Riverpod(dependencies: [SearchNotifier, resource])
Iterable<ResourceLink> lookupLinks(Ref ref) {
  final search = (ref.watch(searchProvider) ?? '').toLowerCase();
  final resource = ref.watch(resourceProvider);
  final links = resource.lookup?.links ?? [];
  return links.where((e) => search.isEmpty || e.title.toLowerCase().startsWith(search));
}
