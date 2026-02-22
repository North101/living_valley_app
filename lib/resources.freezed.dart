// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resources.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Resource {

 String get id; String get title; String? get content; List<ResourceLink> get anchors;

  /// Serializes this Resource to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Resource&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.anchors, anchors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,const DeepCollectionEquality().hash(anchors));

@override
String toString() {
  return 'Resource(id: $id, title: $title, content: $content, anchors: $anchors)';
}


}




/// Adds pattern-matching-related methods to [Resource].
extension ResourcePatterns on Resource {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Resource value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Resource() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Resource value)  $default,){
final _that = this;
switch (_that) {
case _Resource():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Resource value)?  $default,){
final _that = this;
switch (_that) {
case _Resource() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? content,  List<ResourceLink> anchors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Resource() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.anchors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? content,  List<ResourceLink> anchors)  $default,) {final _that = this;
switch (_that) {
case _Resource():
return $default(_that.id,_that.title,_that.content,_that.anchors);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? content,  List<ResourceLink> anchors)?  $default,) {final _that = this;
switch (_that) {
case _Resource() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.anchors);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Resource implements Resource {
  const _Resource({required this.id, required this.title, required this.content, required final  List<ResourceLink> anchors}): _anchors = anchors;
  factory _Resource.fromJson(Map<String, dynamic> json) => _$ResourceFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? content;
 final  List<ResourceLink> _anchors;
@override List<ResourceLink> get anchors {
  if (_anchors is EqualUnmodifiableListView) return _anchors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_anchors);
}



@override
Map<String, dynamic> toJson() {
  return _$ResourceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Resource&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._anchors, _anchors));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,const DeepCollectionEquality().hash(_anchors));

@override
String toString() {
  return 'Resource(id: $id, title: $title, content: $content, anchors: $anchors)';
}


}




ResourceLink _$ResourceLinkFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'default':
          return _ResourceLinkDefault.fromJson(
            json
          );
                case 'lookup':
          return ResourceLinkLookup.fromJson(
            json
          );
                case 'search':
          return ResourceLinkSearch.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'ResourceLink',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$ResourceLink {

 String get id; String get title;

  /// Serializes this ResourceLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceLink&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'ResourceLink(id: $id, title: $title)';
}


}




/// Adds pattern-matching-related methods to [ResourceLink].
extension ResourceLinkPatterns on ResourceLink {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResourceLinkDefault value)?  $default,{TResult Function( ResourceLinkLookup value)?  lookup,TResult Function( ResourceLinkSearch value)?  search,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResourceLinkDefault() when $default != null:
return $default(_that);case ResourceLinkLookup() when lookup != null:
return lookup(_that);case ResourceLinkSearch() when search != null:
return search(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResourceLinkDefault value)  $default,{required TResult Function( ResourceLinkLookup value)  lookup,required TResult Function( ResourceLinkSearch value)  search,}){
final _that = this;
switch (_that) {
case _ResourceLinkDefault():
return $default(_that);case ResourceLinkLookup():
return lookup(_that);case ResourceLinkSearch():
return search(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResourceLinkDefault value)?  $default,{TResult? Function( ResourceLinkLookup value)?  lookup,TResult? Function( ResourceLinkSearch value)?  search,}){
final _that = this;
switch (_that) {
case _ResourceLinkDefault() when $default != null:
return $default(_that);case ResourceLinkLookup() when lookup != null:
return lookup(_that);case ResourceLinkSearch() when search != null:
return search(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title)?  $default,{TResult Function( String id,  String title,  String parents)?  lookup,TResult Function( int index,  String id,  String title,  String parents,  List<String> parts,  String normalizedTitle)?  search,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResourceLinkDefault() when $default != null:
return $default(_that.id,_that.title);case ResourceLinkLookup() when lookup != null:
return lookup(_that.id,_that.title,_that.parents);case ResourceLinkSearch() when search != null:
return search(_that.index,_that.id,_that.title,_that.parents,_that.parts,_that.normalizedTitle);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title)  $default,{required TResult Function( String id,  String title,  String parents)  lookup,required TResult Function( int index,  String id,  String title,  String parents,  List<String> parts,  String normalizedTitle)  search,}) {final _that = this;
switch (_that) {
case _ResourceLinkDefault():
return $default(_that.id,_that.title);case ResourceLinkLookup():
return lookup(_that.id,_that.title,_that.parents);case ResourceLinkSearch():
return search(_that.index,_that.id,_that.title,_that.parents,_that.parts,_that.normalizedTitle);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title)?  $default,{TResult? Function( String id,  String title,  String parents)?  lookup,TResult? Function( int index,  String id,  String title,  String parents,  List<String> parts,  String normalizedTitle)?  search,}) {final _that = this;
switch (_that) {
case _ResourceLinkDefault() when $default != null:
return $default(_that.id,_that.title);case ResourceLinkLookup() when lookup != null:
return lookup(_that.id,_that.title,_that.parents);case ResourceLinkSearch() when search != null:
return search(_that.index,_that.id,_that.title,_that.parents,_that.parts,_that.normalizedTitle);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResourceLinkDefault implements ResourceLink {
  const _ResourceLinkDefault({required this.id, required this.title, final  String? $type}): $type = $type ?? 'default';
  factory _ResourceLinkDefault.fromJson(Map<String, dynamic> json) => _$ResourceLinkDefaultFromJson(json);

@override final  String id;
@override final  String title;

@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ResourceLinkDefaultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResourceLinkDefault&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title);

@override
String toString() {
  return 'ResourceLink(id: $id, title: $title)';
}


}




/// @nodoc
@JsonSerializable()

class ResourceLinkLookup implements ResourceLink {
  const ResourceLinkLookup({required this.id, required this.title, required this.parents, final  String? $type}): $type = $type ?? 'lookup';
  factory ResourceLinkLookup.fromJson(Map<String, dynamic> json) => _$ResourceLinkLookupFromJson(json);

@override final  String id;
@override final  String title;
 final  String parents;

@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ResourceLinkLookupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceLinkLookup&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.parents, parents) || other.parents == parents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,parents);

@override
String toString() {
  return 'ResourceLink.lookup(id: $id, title: $title, parents: $parents)';
}


}




/// @nodoc
@JsonSerializable()

class ResourceLinkSearch implements ResourceLink {
  const ResourceLinkSearch({required this.index, required this.id, required this.title, required this.parents, required final  List<String> parts, required this.normalizedTitle, final  String? $type}): _parts = parts,$type = $type ?? 'search';
  factory ResourceLinkSearch.fromJson(Map<String, dynamic> json) => _$ResourceLinkSearchFromJson(json);

 final  int index;
@override final  String id;
@override final  String title;
 final  String parents;
 final  List<String> _parts;
 List<String> get parts {
  if (_parts is EqualUnmodifiableListView) return _parts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parts);
}

 final  String normalizedTitle;

@JsonKey(name: 'runtimeType')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$ResourceLinkSearchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceLinkSearch&&(identical(other.index, index) || other.index == index)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.parents, parents) || other.parents == parents)&&const DeepCollectionEquality().equals(other._parts, _parts)&&(identical(other.normalizedTitle, normalizedTitle) || other.normalizedTitle == normalizedTitle));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,id,title,parents,const DeepCollectionEquality().hash(_parts),normalizedTitle);

@override
String toString() {
  return 'ResourceLink.search(index: $index, id: $id, title: $title, parents: $parents, parts: $parts, normalizedTitle: $normalizedTitle)';
}


}




// dart format on
