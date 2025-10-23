import 'package:freezed_annotation/freezed_annotation.dart';

part 'resources.freezed.dart';
part 'resources.g.dart';

@Freezed()
abstract class Resource with _$Resource {
  const factory Resource({
    required String id,
    required String title,
    required String? content,
    required List<ResourceLink> anchors,
    required List<ResourceLink> links,
    required List<ResourceLink> lookup,
  }) = _Resource;

  factory Resource.fromJson(Map<String, Object?> json) => _$ResourceFromJson(json);
}

@Freezed(copyWith: false)
abstract class ResourceLink with _$ResourceLink {
  const factory ResourceLink({
    required String id,
    required String title,
  }) = _ResourceLink;

  factory ResourceLink.fromJson(Map<String, Object?> json) => _$ResourceLinkFromJson(json);
}
