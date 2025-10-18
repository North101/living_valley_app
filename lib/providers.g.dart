// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(readResource)
const readResourceProvider = ReadResourceFamily._();

final class ReadResourceProvider
    extends
        $FunctionalProvider<AsyncValue<Resource>, Resource, FutureOr<Resource>>
    with $FutureModifier<Resource>, $FutureProvider<Resource> {
  const ReadResourceProvider._({
    required ReadResourceFamily super.from,
    required (String, ResourceLookupGroup?) super.argument,
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
    final argument = this.argument as (String, ResourceLookupGroup?);
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

String _$readResourceHash() => r'7abb8e73e7890ba7a263cd9c07e6d256ec0fb1de';

final class ReadResourceFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<Resource>,
          (String, ResourceLookupGroup?)
        > {
  const ReadResourceFamily._()
    : super(
        retry: null,
        name: r'readResourceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReadResourceProvider call(String resourceId, ResourceLookupGroup? lookup) =>
      ReadResourceProvider._(argument: (resourceId, lookup), from: this);

  @override
  String toString() => r'readResourceProvider';
}
