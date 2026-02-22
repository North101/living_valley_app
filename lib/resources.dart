import 'package:freezed_annotation/freezed_annotation.dart';

part 'resources.freezed.dart';
part 'resources.g.dart';

@Freezed(copyWith: false)
abstract class Resource with _$Resource {
  const factory Resource({
    required String id,
    required String title,
    required String? content,
    required List<ResourceLink> anchors,
  }) = _Resource;

  factory Resource.fromJson(Map<String, Object?> json) => _$ResourceFromJson(json);
}

@Freezed(copyWith: false)
abstract class ResourceLink with _$ResourceLink {
  const factory ResourceLink({
    required String id,
    required String title,
  }) = _ResourceLinkDefault;

  const factory ResourceLink.lookup({
    required String id,
    required String title,
    required String parents,
  }) = ResourceLinkLookup;

  const factory ResourceLink.search({
    required int index,
    required String id,
    required String title,
    required String parents,
    required List<String> parts,
    required String normalizedTitle,
  }) = ResourceLinkSearch;

  factory ResourceLink.fromJson(Map<String, Object?> json) => _$ResourceLinkFromJson(json);
}
