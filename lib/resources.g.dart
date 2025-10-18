// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Resource _$ResourceFromJson(Map<String, dynamic> json) => _Resource(
  id: json['id'] as String,
  title: json['title'] as String,
  content: json['content'] as String?,
  links: (json['links'] as List<dynamic>)
      .map((e) => ResourceLink.fromJson(e as Map<String, dynamic>))
      .toList(),
  lookup: (json['lookup'] as List<dynamic>?)
      ?.map((e) => ResourceLink.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ResourceToJson(_Resource instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'content': instance.content,
  'links': instance.links,
  'lookup': instance.lookup,
};

_ResourceLink _$ResourceLinkFromJson(Map<String, dynamic> json) =>
    _ResourceLink(id: json['id'] as String, title: json['title'] as String);

Map<String, dynamic> _$ResourceLinkToJson(_ResourceLink instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};
