// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Resource _$ResourceFromJson(Map<String, dynamic> json) => _Resource(
  id: json['id'] as String,
  title: json['title'] as String,
  content: json['content'] as String?,
  anchors: (json['anchors'] as List<dynamic>)
      .map((e) => ResourceLink.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ResourceToJson(_Resource instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'content': instance.content,
  'anchors': instance.anchors,
};

_ResourceLinkDefault _$ResourceLinkDefaultFromJson(Map<String, dynamic> json) =>
    _ResourceLinkDefault(
      id: json['id'] as String,
      title: json['title'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResourceLinkDefaultToJson(
  _ResourceLinkDefault instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'runtimeType': instance.$type,
};

ResourceLinkLookup _$ResourceLinkLookupFromJson(Map<String, dynamic> json) =>
    ResourceLinkLookup(
      id: json['id'] as String,
      title: json['title'] as String,
      parents: json['parents'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResourceLinkLookupToJson(ResourceLinkLookup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'parents': instance.parents,
      'runtimeType': instance.$type,
    };

ResourceLinkSearch _$ResourceLinkSearchFromJson(Map<String, dynamic> json) =>
    ResourceLinkSearch(
      index: (json['index'] as num).toInt(),
      id: json['id'] as String,
      title: json['title'] as String,
      parents: json['parents'] as String,
      parts: (json['parts'] as List<dynamic>).map((e) => e as String).toList(),
      normalizedTitle: json['normalizedTitle'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ResourceLinkSearchToJson(ResourceLinkSearch instance) =>
    <String, dynamic>{
      'index': instance.index,
      'id': instance.id,
      'title': instance.title,
      'parents': instance.parents,
      'parts': instance.parts,
      'normalizedTitle': instance.normalizedTitle,
      'runtimeType': instance.$type,
    };
