// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchNotifier)
final searchProvider = SearchNotifierProvider._();

final class SearchNotifierProvider
    extends $NotifierProvider<SearchNotifier, String?> {
  SearchNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[],
        $allTransitiveDependencies: <ProviderOrFamily>[],
      );

  @override
  String debugGetCreateSourceHash() => _$searchNotifierHash();

  @$internal
  @override
  SearchNotifier create() => SearchNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$searchNotifierHash() => r'1a6a6116941b03ee0bbe324395ca0088d7eb1bc4';

abstract class _$SearchNotifier extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}

@ProviderFor(isSearching)
final isSearchingProvider = IsSearchingProvider._();

final class IsSearchingProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  IsSearchingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isSearchingProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[searchProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          IsSearchingProvider.$allTransitiveDependencies0,
        ],
      );

  static final $allTransitiveDependencies0 = searchProvider;

  @override
  String debugGetCreateSourceHash() => _$isSearchingHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return isSearching(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$isSearchingHash() => r'15c8de74fb2abf3a0df5327e90d4010460145e3a';

@ProviderFor(normalizedSearch)
final normalizedSearchProvider = NormalizedSearchProvider._();

final class NormalizedSearchProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  NormalizedSearchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'normalizedSearchProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[searchProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          NormalizedSearchProvider.$allTransitiveDependencies0,
        ],
      );

  static final $allTransitiveDependencies0 = searchProvider;

  @override
  String debugGetCreateSourceHash() => _$normalizedSearchHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return normalizedSearch(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$normalizedSearchHash() => r'b1331954d5f90f52aa4d25c4ab29646a34dc3ad5';

@ProviderFor(resource)
final resourceProvider = ResourceProvider._();

final class ResourceProvider
    extends $FunctionalProvider<Resource, Resource, Resource>
    with $Provider<Resource> {
  ResourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resourceProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[],
        $allTransitiveDependencies: <ProviderOrFamily>[],
      );

  @override
  String debugGetCreateSourceHash() => _$resourceHash();

  @$internal
  @override
  $ProviderElement<Resource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Resource create(Ref ref) {
    return resource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Resource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Resource>(value),
    );
  }
}

String _$resourceHash() => r'9fbc1965e4aab07f46859c583bf6c2087ebbaf46';

@ProviderFor(resourceParts)
final resourcePartsProvider = ResourcePartsProvider._();

final class ResourcePartsProvider
    extends $FunctionalProvider<List<String>, List<String>, List<String>>
    with $Provider<List<String>> {
  ResourcePartsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resourcePartsProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[resourceProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          ResourcePartsProvider.$allTransitiveDependencies0,
        ],
      );

  static final $allTransitiveDependencies0 = resourceProvider;

  @override
  String debugGetCreateSourceHash() => _$resourcePartsHash();

  @$internal
  @override
  $ProviderElement<List<String>> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  List<String> create(Ref ref) {
    return resourceParts(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<String>>(value),
    );
  }
}

String _$resourcePartsHash() => r'0b3de91030b5c17b1ec3524542e5e4453d4f8131';

@ProviderFor(listFilteredLookup)
final listFilteredLookupProvider = ListFilteredLookupProvider._();

final class ListFilteredLookupProvider
    extends
        $FunctionalProvider<
          AsyncValue<Iterable<ResourceLinkSearch>>,
          Iterable<ResourceLinkSearch>,
          FutureOr<Iterable<ResourceLinkSearch>>
        >
    with
        $FutureModifier<Iterable<ResourceLinkSearch>>,
        $FutureProvider<Iterable<ResourceLinkSearch>> {
  ListFilteredLookupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'listFilteredLookupProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[
          normalizedSearchProvider,
          readLookupProvider,
          resourcePartsProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>{
          ListFilteredLookupProvider.$allTransitiveDependencies0,
          ListFilteredLookupProvider.$allTransitiveDependencies1,
          ListFilteredLookupProvider.$allTransitiveDependencies2,
          ListFilteredLookupProvider.$allTransitiveDependencies3,
          ListFilteredLookupProvider.$allTransitiveDependencies4,
        },
      );

  static final $allTransitiveDependencies0 = normalizedSearchProvider;
  static final $allTransitiveDependencies1 =
      NormalizedSearchProvider.$allTransitiveDependencies0;
  static final $allTransitiveDependencies2 = readLookupProvider;
  static final $allTransitiveDependencies3 = resourcePartsProvider;
  static final $allTransitiveDependencies4 =
      ResourcePartsProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$listFilteredLookupHash();

  @$internal
  @override
  $FutureProviderElement<Iterable<ResourceLinkSearch>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Iterable<ResourceLinkSearch>> create(Ref ref) {
    return listFilteredLookup(ref);
  }
}

String _$listFilteredLookupHash() =>
    r'28c252f18e0f9d391a4308211ced30b5ec773301';

@ProviderFor(withinReach)
final withinReachProvider = WithinReachProvider._();

final class WithinReachProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ResourceLinkSearch>>,
          List<ResourceLinkSearch>,
          FutureOr<List<ResourceLinkSearch>>
        >
    with
        $FutureModifier<List<ResourceLinkSearch>>,
        $FutureProvider<List<ResourceLinkSearch>> {
  WithinReachProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'withinReachProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[
          listFilteredLookupProvider,
          normalizedSearchProvider,
          resourcePartsProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>{
          WithinReachProvider.$allTransitiveDependencies0,
          WithinReachProvider.$allTransitiveDependencies1,
          WithinReachProvider.$allTransitiveDependencies2,
          WithinReachProvider.$allTransitiveDependencies3,
          WithinReachProvider.$allTransitiveDependencies4,
          WithinReachProvider.$allTransitiveDependencies5,
        },
      );

  static final $allTransitiveDependencies0 = listFilteredLookupProvider;
  static final $allTransitiveDependencies1 =
      ListFilteredLookupProvider.$allTransitiveDependencies0;
  static final $allTransitiveDependencies2 =
      ListFilteredLookupProvider.$allTransitiveDependencies1;
  static final $allTransitiveDependencies3 =
      ListFilteredLookupProvider.$allTransitiveDependencies2;
  static final $allTransitiveDependencies4 =
      ListFilteredLookupProvider.$allTransitiveDependencies3;
  static final $allTransitiveDependencies5 =
      ListFilteredLookupProvider.$allTransitiveDependencies4;

  @override
  String debugGetCreateSourceHash() => _$withinReachHash();

  @$internal
  @override
  $FutureProviderElement<List<ResourceLinkSearch>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ResourceLinkSearch>> create(Ref ref) {
    return withinReach(ref);
  }
}

String _$withinReachHash() => r'da77613932c1bcd099211a3d59d42982b3260c76';

@ProviderFor(alongTheWay)
final alongTheWayProvider = AlongTheWayProvider._();

final class AlongTheWayProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ResourceLinkSearch>>,
          List<ResourceLinkSearch>,
          FutureOr<List<ResourceLinkSearch>>
        >
    with
        $FutureModifier<List<ResourceLinkSearch>>,
        $FutureProvider<List<ResourceLinkSearch>> {
  AlongTheWayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alongTheWayProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[
          listFilteredLookupProvider,
          normalizedSearchProvider,
          resourcePartsProvider,
          withinReachProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>{
          AlongTheWayProvider.$allTransitiveDependencies0,
          AlongTheWayProvider.$allTransitiveDependencies1,
          AlongTheWayProvider.$allTransitiveDependencies2,
          AlongTheWayProvider.$allTransitiveDependencies3,
          AlongTheWayProvider.$allTransitiveDependencies4,
          AlongTheWayProvider.$allTransitiveDependencies5,
          AlongTheWayProvider.$allTransitiveDependencies6,
        },
      );

  static final $allTransitiveDependencies0 = listFilteredLookupProvider;
  static final $allTransitiveDependencies1 =
      ListFilteredLookupProvider.$allTransitiveDependencies0;
  static final $allTransitiveDependencies2 =
      ListFilteredLookupProvider.$allTransitiveDependencies1;
  static final $allTransitiveDependencies3 =
      ListFilteredLookupProvider.$allTransitiveDependencies2;
  static final $allTransitiveDependencies4 =
      ListFilteredLookupProvider.$allTransitiveDependencies3;
  static final $allTransitiveDependencies5 =
      ListFilteredLookupProvider.$allTransitiveDependencies4;
  static final $allTransitiveDependencies6 = withinReachProvider;

  @override
  String debugGetCreateSourceHash() => _$alongTheWayHash();

  @$internal
  @override
  $FutureProviderElement<List<ResourceLinkSearch>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ResourceLinkSearch>> create(Ref ref) {
    return alongTheWay(ref);
  }
}

String _$alongTheWayHash() => r'9686a0ce1ce970922d878f9fa3ee9946f626e8fe';

@ProviderFor(surroundings)
final surroundingsProvider = SurroundingsProvider._();

final class SurroundingsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ResourceLinkSearch>>,
          List<ResourceLinkSearch>,
          FutureOr<List<ResourceLinkSearch>>
        >
    with
        $FutureModifier<List<ResourceLinkSearch>>,
        $FutureProvider<List<ResourceLinkSearch>> {
  SurroundingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'surroundingsProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[
          alongTheWayProvider,
          listFilteredLookupProvider,
          normalizedSearchProvider,
          resourceProvider,
          withinReachProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>{
          SurroundingsProvider.$allTransitiveDependencies0,
          SurroundingsProvider.$allTransitiveDependencies1,
          SurroundingsProvider.$allTransitiveDependencies2,
          SurroundingsProvider.$allTransitiveDependencies3,
          SurroundingsProvider.$allTransitiveDependencies4,
          SurroundingsProvider.$allTransitiveDependencies5,
          SurroundingsProvider.$allTransitiveDependencies6,
          SurroundingsProvider.$allTransitiveDependencies7,
        },
      );

  static final $allTransitiveDependencies0 = alongTheWayProvider;
  static final $allTransitiveDependencies1 =
      AlongTheWayProvider.$allTransitiveDependencies0;
  static final $allTransitiveDependencies2 =
      AlongTheWayProvider.$allTransitiveDependencies1;
  static final $allTransitiveDependencies3 =
      AlongTheWayProvider.$allTransitiveDependencies2;
  static final $allTransitiveDependencies4 =
      AlongTheWayProvider.$allTransitiveDependencies3;
  static final $allTransitiveDependencies5 =
      AlongTheWayProvider.$allTransitiveDependencies4;
  static final $allTransitiveDependencies6 =
      AlongTheWayProvider.$allTransitiveDependencies5;
  static final $allTransitiveDependencies7 =
      AlongTheWayProvider.$allTransitiveDependencies6;

  @override
  String debugGetCreateSourceHash() => _$surroundingsHash();

  @$internal
  @override
  $FutureProviderElement<List<ResourceLinkSearch>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ResourceLinkSearch>> create(Ref ref) {
    return surroundings(ref);
  }
}

String _$surroundingsHash() => r'1ab89b6c1c68f60f00dd1b4f47df2621a064a6da';

@ProviderFor(searchLinks)
final searchLinksProvider = SearchLinksProvider._();

final class SearchLinksProvider
    extends
        $FunctionalProvider<
          AsyncValue<
            ({
              Iterable<ResourceLinkSearch> alongTheWay,
              Iterable<ResourceLinkSearch> surroundings,
              Iterable<ResourceLinkSearch> withinReach,
            })
          >,
          ({
            Iterable<ResourceLinkSearch> alongTheWay,
            Iterable<ResourceLinkSearch> surroundings,
            Iterable<ResourceLinkSearch> withinReach,
          }),
          FutureOr<
            ({
              Iterable<ResourceLinkSearch> alongTheWay,
              Iterable<ResourceLinkSearch> surroundings,
              Iterable<ResourceLinkSearch> withinReach,
            })
          >
        >
    with
        $FutureModifier<
          ({
            Iterable<ResourceLinkSearch> alongTheWay,
            Iterable<ResourceLinkSearch> surroundings,
            Iterable<ResourceLinkSearch> withinReach,
          })
        >,
        $FutureProvider<
          ({
            Iterable<ResourceLinkSearch> alongTheWay,
            Iterable<ResourceLinkSearch> surroundings,
            Iterable<ResourceLinkSearch> withinReach,
          })
        > {
  SearchLinksProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchLinksProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[
          alongTheWayProvider,
          surroundingsProvider,
          withinReachProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>{
          SearchLinksProvider.$allTransitiveDependencies0,
          SearchLinksProvider.$allTransitiveDependencies1,
          SearchLinksProvider.$allTransitiveDependencies2,
          SearchLinksProvider.$allTransitiveDependencies3,
          SearchLinksProvider.$allTransitiveDependencies4,
          SearchLinksProvider.$allTransitiveDependencies5,
          SearchLinksProvider.$allTransitiveDependencies6,
          SearchLinksProvider.$allTransitiveDependencies7,
          SearchLinksProvider.$allTransitiveDependencies8,
        },
      );

  static final $allTransitiveDependencies0 = alongTheWayProvider;
  static final $allTransitiveDependencies1 =
      AlongTheWayProvider.$allTransitiveDependencies0;
  static final $allTransitiveDependencies2 =
      AlongTheWayProvider.$allTransitiveDependencies1;
  static final $allTransitiveDependencies3 =
      AlongTheWayProvider.$allTransitiveDependencies2;
  static final $allTransitiveDependencies4 =
      AlongTheWayProvider.$allTransitiveDependencies3;
  static final $allTransitiveDependencies5 =
      AlongTheWayProvider.$allTransitiveDependencies4;
  static final $allTransitiveDependencies6 =
      AlongTheWayProvider.$allTransitiveDependencies5;
  static final $allTransitiveDependencies7 =
      AlongTheWayProvider.$allTransitiveDependencies6;
  static final $allTransitiveDependencies8 = surroundingsProvider;

  @override
  String debugGetCreateSourceHash() => _$searchLinksHash();

  @$internal
  @override
  $FutureProviderElement<
    ({
      Iterable<ResourceLinkSearch> alongTheWay,
      Iterable<ResourceLinkSearch> surroundings,
      Iterable<ResourceLinkSearch> withinReach,
    })
  >
  $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<
    ({
      Iterable<ResourceLinkSearch> alongTheWay,
      Iterable<ResourceLinkSearch> surroundings,
      Iterable<ResourceLinkSearch> withinReach,
    })
  >
  create(Ref ref) {
    return searchLinks(ref);
  }
}

String _$searchLinksHash() => r'b811d8e6e794c14b0cd7267ea8d847155e828a96';

@ProviderFor(anchor)
final anchorProvider = AnchorProvider._();

final class AnchorProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  AnchorProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'anchorProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[],
        $allTransitiveDependencies: <ProviderOrFamily>[],
      );

  @override
  String debugGetCreateSourceHash() => _$anchorHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return anchor(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$anchorHash() => r'7d11296c8cc2dc7afb1968275297debe1d8a4b8e';
