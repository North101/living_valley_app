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
    required String super.argument,
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
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Resource> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Resource> create(Ref ref) {
    final argument = this.argument as String;
    return readResource(ref, argument);
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

String _$readResourceHash() => r'e39fe6bcb932d11bbc2fbef29df0f59b1962da55';

final class ReadResourceFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Resource>, String> {
  ReadResourceFamily._()
    : super(
        retry: null,
        name: r'readResourceProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ReadResourceProvider call(String resourceId) =>
      ReadResourceProvider._(argument: resourceId, from: this);

  @override
  String toString() => r'readResourceProvider';
}

@ProviderFor(readLookup)
final readLookupProvider = ReadLookupProvider._();

final class ReadLookupProvider
    extends
        $FunctionalProvider<
          AsyncValue<Iterable<ResourceLink>>,
          Iterable<ResourceLink>,
          FutureOr<Iterable<ResourceLink>>
        >
    with
        $FutureModifier<Iterable<ResourceLink>>,
        $FutureProvider<Iterable<ResourceLink>> {
  ReadLookupProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'readLookupProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$readLookupHash();

  @$internal
  @override
  $FutureProviderElement<Iterable<ResourceLink>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Iterable<ResourceLink>> create(Ref ref) {
    return readLookup(ref);
  }
}

String _$readLookupHash() => r'20b997d09657e6e80d8c4d38c6b193e0f138165b';
