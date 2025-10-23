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

@ProviderFor(canSearch)
final canSearchProvider = CanSearchProvider._();

final class CanSearchProvider extends $FunctionalProvider<bool, bool, bool>
    with $Provider<bool> {
  CanSearchProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'canSearchProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[
          relativeLinksProvider,
          lookupLinksProvider,
        ],
        $allTransitiveDependencies: <ProviderOrFamily>{
          CanSearchProvider.$allTransitiveDependencies0,
          CanSearchProvider.$allTransitiveDependencies1,
          CanSearchProvider.$allTransitiveDependencies2,
          CanSearchProvider.$allTransitiveDependencies3,
        },
      );

  static final $allTransitiveDependencies0 = relativeLinksProvider;
  static final $allTransitiveDependencies1 =
      RelativeLinksProvider.$allTransitiveDependencies0;
  static final $allTransitiveDependencies2 =
      RelativeLinksProvider.$allTransitiveDependencies1;
  static final $allTransitiveDependencies3 = lookupLinksProvider;

  @override
  String debugGetCreateSourceHash() => _$canSearchHash();

  @$internal
  @override
  $ProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  bool create(Ref ref) {
    return canSearch(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$canSearchHash() => r'621cc8c3aa15ab29caa31f1962a3be0e1aa0cee6';

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

@ProviderFor(relativeLinks)
final relativeLinksProvider = RelativeLinksProvider._();

final class RelativeLinksProvider
    extends
        $FunctionalProvider<
          Iterable<ResourceLink>,
          Iterable<ResourceLink>,
          Iterable<ResourceLink>
        >
    with $Provider<Iterable<ResourceLink>> {
  RelativeLinksProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'relativeLinksProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[searchProvider, resourceProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          RelativeLinksProvider.$allTransitiveDependencies0,
          RelativeLinksProvider.$allTransitiveDependencies1,
        ],
      );

  static final $allTransitiveDependencies0 = searchProvider;
  static final $allTransitiveDependencies1 = resourceProvider;

  @override
  String debugGetCreateSourceHash() => _$relativeLinksHash();

  @$internal
  @override
  $ProviderElement<Iterable<ResourceLink>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Iterable<ResourceLink> create(Ref ref) {
    return relativeLinks(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Iterable<ResourceLink> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Iterable<ResourceLink>>(value),
    );
  }
}

String _$relativeLinksHash() => r'6169478daf207fc3e4f5e9b505334852a3fb9e5e';

@ProviderFor(lookupLinks)
final lookupLinksProvider = LookupLinksProvider._();

final class LookupLinksProvider
    extends
        $FunctionalProvider<
          Iterable<ResourceLink>,
          Iterable<ResourceLink>,
          Iterable<ResourceLink>
        >
    with $Provider<Iterable<ResourceLink>> {
  LookupLinksProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lookupLinksProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[searchProvider, resourceProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          LookupLinksProvider.$allTransitiveDependencies0,
          LookupLinksProvider.$allTransitiveDependencies1,
        ],
      );

  static final $allTransitiveDependencies0 = searchProvider;
  static final $allTransitiveDependencies1 = resourceProvider;

  @override
  String debugGetCreateSourceHash() => _$lookupLinksHash();

  @$internal
  @override
  $ProviderElement<Iterable<ResourceLink>> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  Iterable<ResourceLink> create(Ref ref) {
    return lookupLinks(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Iterable<ResourceLink> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Iterable<ResourceLink>>(value),
    );
  }
}

String _$lookupLinksHash() => r'393e2efaab13306103575da31f7128f729528476';
