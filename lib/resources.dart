import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resources.freezed.dart';
part 'resources.g.dart';

@Freezed()
abstract class Resource with _$Resource {
  const factory Resource({
    required String id,
    required String title,
    required String? content,
    required List<ResourceLink> links,
    required ResourceLookupGroup? lookup,
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

@Freezed(copyWith: false)
abstract class ResourceLookupGroup with _$ResourceLookupGroup {
  const factory ResourceLookupGroup({
    required String title,
    required List<ResourceLink> links,
  }) = _ResourceLookupGroup;

  factory ResourceLookupGroup.fromJson(Map<String, Object?> json) => _$ResourceLookupGroupFromJson(json);
}

enum ResourceHighlightColor {
  @JsonValue('blue')
  blue,
  @JsonValue('clear')
  clear
  ;

  String get className {
    return 'highlight_$name';
  }

  Color? color(Brightness brightness) {
    return switch (brightness) {
      Brightness.dark => switch (this) {
        ResourceHighlightColor.blue => const Color.fromRGBO(82, 116, 154, 1),
        ResourceHighlightColor.clear => null,
      },
      Brightness.light => switch (this) {
        ResourceHighlightColor.blue => const Color.fromRGBO(209, 228, 255, 1),
        ResourceHighlightColor.clear => null,
      },
    };
  }
}

enum ResourceTextColor {
  @JsonValue('blue')
  blue,
  @JsonValue('red')
  red,
  @JsonValue('gold')
  gold,
  @JsonValue('green')
  green
  ;

  String get className {
    return 'text_$name';
  }

  Color? color(Brightness brightness) {
    return switch (brightness) {
      Brightness.dark => switch (this) {
        ResourceTextColor.red => const Color.fromRGBO(236, 139, 139, 1),
        ResourceTextColor.blue => const Color.fromRGBO(181, 204, 250, 1),
        ResourceTextColor.green => const Color.fromRGBO(3, 155, 40, 1),
        ResourceTextColor.gold => const Color.fromRGBO(181, 158, 0, 1),
      },
      Brightness.light => switch (this) {
        ResourceTextColor.red => const Color.fromRGBO(192, 11, 11, 1),
        ResourceTextColor.blue => const Color.fromRGBO(98, 130, 193, 1),
        ResourceTextColor.green => const Color.fromRGBO(3, 155, 40, 1),
        ResourceTextColor.gold => const Color.fromRGBO(181, 158, 0, 1),
      },
    };
  }
}
