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

_ResourceLink _$ResourceLinkFromJson(Map<String, dynamic> json) =>
    _ResourceLink(
      id: json['id'] as String,
      title: json['title'] as String,
      parents: (json['parents'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ResourceLinkToJson(_ResourceLink instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'parents': instance.parents,
    };
