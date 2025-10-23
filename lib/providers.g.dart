// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(readResource)
final readResourceProvider = ReadResourceFamily._();

final class ReadResourceProvider
    extends
        $FunctionalProvider<AsyncValue<Resource>, Resource, FutureOr<Resource>>
    with $FutureModifier<Resource>, $FutureProvider<Resource> {
  ReadResourceProvider._({
    required ReadResourceFamily super.from,
    required (String, List<ResourceLink>) super.argument,
  }) : super(
         retry: null,
         name: r'readResourceProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$readResourceHash();

  @override
  String toString() {
    return r'readResourceProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<Resource> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Resource> create(Ref ref) {
    final argument = this.argument as (String, List<ResourceLink>);
    return readResource(ref, argument.$1, argument.$2);
  }

  @override
  bool operator ==(Object other) {
    return other is ReadResourceProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$readResourceHash() => r'fd672ea76970ccde0b3705602ddf5cfee58a5af9';

final class ReadResourceFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<Resource>,
          (String, List<ResourceLink>)
        > {
  ReadResourceFamily._()
    : super(
        retry: null,
        name: r'readResourceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReadResourceProvider call(String resourceId, List<ResourceLink> lookup) =>
      ReadResourceProvider._(argument: (resourceId, lookup), from: this);

  @override
  String toString() => r'readResourceProvider';
}
