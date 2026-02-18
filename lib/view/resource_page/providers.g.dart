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

String _$searchNotifierHash() => r'2574a67f71efbffaabe42f0873aeaf621428eee5';

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

@ProviderFor(withinReach)
final withinReachProvider = WithinReachProvider._();

final class WithinReachProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ResourceLink>>,
          List<ResourceLink>,
          FutureOr<List<ResourceLink>>
        >
    with
        $FutureModifier<List<ResourceLink>>,
        $FutureProvider<List<ResourceLink>> {
  WithinReachProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'withinReachProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[searchProvider, resourceProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          WithinReachProvider.$allTransitiveDependencies0,
          WithinReachProvider.$allTransitiveDependencies1,
        ],
      );

  static final $allTransitiveDependencies0 = searchProvider;
  static final $allTransitiveDependencies1 = resourceProvider;

  @override
  String debugGetCreateSourceHash() => _$withinReachHash();

  @$internal
  @override
  $FutureProviderElement<List<ResourceLink>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ResourceLink>> create(Ref ref) {
    return withinReach(ref);
  }
}

String _$withinReachHash() => r'd86a680ef9a274754710b92bf374a42912e8df67';

@ProviderFor(alongTheWay)
final alongTheWayProvider = AlongTheWayProvider._();

final class AlongTheWayProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ResourceLink>>,
          List<ResourceLink>,
          FutureOr<List<ResourceLink>>
        >
    with
        $FutureModifier<List<ResourceLink>>,
        $FutureProvider<List<ResourceLink>> {
  AlongTheWayProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alongTheWayProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[
          searchProvider,
          resourceProvider,
          withinReachProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>[
          AlongTheWayProvider.$allTransitiveDependencies0,
          AlongTheWayProvider.$allTransitiveDependencies1,
          AlongTheWayProvider.$allTransitiveDependencies2,
        ],
      );

  static final $allTransitiveDependencies0 = searchProvider;
  static final $allTransitiveDependencies1 = resourceProvider;
  static final $allTransitiveDependencies2 = withinReachProvider;

  @override
  String debugGetCreateSourceHash() => _$alongTheWayHash();

  @$internal
  @override
  $FutureProviderElement<List<ResourceLink>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ResourceLink>> create(Ref ref) {
    return alongTheWay(ref);
  }
}

String _$alongTheWayHash() => r'98d70648b145a10651d6fef503fddc802aee7b00';

@ProviderFor(surroundings)
final surroundingsProvider = SurroundingsProvider._();

final class SurroundingsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<ResourceLink>>,
          List<ResourceLink>,
          FutureOr<List<ResourceLink>>
        >
    with
        $FutureModifier<List<ResourceLink>>,
        $FutureProvider<List<ResourceLink>> {
  SurroundingsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'surroundingsProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[
          searchProvider,
          resourceProvider,
          withinReachProvider,
          alongTheWayProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>{
          SurroundingsProvider.$allTransitiveDependencies0,
          SurroundingsProvider.$allTransitiveDependencies1,
          SurroundingsProvider.$allTransitiveDependencies2,
          SurroundingsProvider.$allTransitiveDependencies3,
        },
      );

  static final $allTransitiveDependencies0 = searchProvider;
  static final $allTransitiveDependencies1 = resourceProvider;
  static final $allTransitiveDependencies2 = withinReachProvider;
  static final $allTransitiveDependencies3 = alongTheWayProvider;

  @override
  String debugGetCreateSourceHash() => _$surroundingsHash();

  @$internal
  @override
  $FutureProviderElement<List<ResourceLink>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<ResourceLink>> create(Ref ref) {
    return surroundings(ref);
  }
}

String _$surroundingsHash() => r'3ad989820dcaa0d452b86b2bb9ef263a9531ddd2';

@ProviderFor(searchLinks)
final searchLinksProvider = SearchLinksProvider._();

final class SearchLinksProvider
    extends
        $FunctionalProvider<
          AsyncValue<
            ({
              List<ResourceLink> alongTheWay,
              List<ResourceLink> surroundings,
              List<ResourceLink> withinReach,
            })
          >,
          ({
            List<ResourceLink> alongTheWay,
            List<ResourceLink> surroundings,
            List<ResourceLink> withinReach,
          }),
          FutureOr<
            ({
              List<ResourceLink> alongTheWay,
              List<ResourceLink> surroundings,
              List<ResourceLink> withinReach,
            })
          >
        >
    with
        $FutureModifier<
          ({
            List<ResourceLink> alongTheWay,
            List<ResourceLink> surroundings,
            List<ResourceLink> withinReach,
          })
        >,
        $FutureProvider<
          ({
            List<ResourceLink> alongTheWay,
            List<ResourceLink> surroundings,
            List<ResourceLink> withinReach,
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
          withinReachProvider,
          alongTheWayProvider,
          surroundingsProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>{
          SearchLinksProvider.$allTransitiveDependencies0,
          SearchLinksProvider.$allTransitiveDependencies1,
          SearchLinksProvider.$allTransitiveDependencies2,
          SearchLinksProvider.$allTransitiveDependencies3,
          SearchLinksProvider.$allTransitiveDependencies4,
        },
      );

  static final $allTransitiveDependencies0 = withinReachProvider;
  static final $allTransitiveDependencies1 =
      WithinReachProvider.$allTransitiveDependencies0;
  static final $allTransitiveDependencies2 =
      WithinReachProvider.$allTransitiveDependencies1;
  static final $allTransitiveDependencies3 = alongTheWayProvider;
  static final $allTransitiveDependencies4 = surroundingsProvider;

  @override
  String debugGetCreateSourceHash() => _$searchLinksHash();

  @$internal
  @override
  $FutureProviderElement<
    ({
      List<ResourceLink> alongTheWay,
      List<ResourceLink> surroundings,
      List<ResourceLink> withinReach,
    })
  >
  $createElement($ProviderPointer pointer) => $FutureProviderElement(pointer);

  @override
  FutureOr<
    ({
      List<ResourceLink> alongTheWay,
      List<ResourceLink> surroundings,
      List<ResourceLink> withinReach,
    })
  >
  create(Ref ref) {
    return searchLinks(ref);
  }
}

String _$searchLinksHash() => r'3e94d590bbe78c2deeec1b3b3c057df00e3e8456';
