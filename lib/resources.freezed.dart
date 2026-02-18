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
/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResourceCopyWith<Resource> get copyWith => _$ResourceCopyWithImpl<Resource>(this as Resource, _$identity);

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

/// @nodoc
abstract mixin class $ResourceCopyWith<$Res>  {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) _then) = _$ResourceCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? content, List<ResourceLink> anchors
});




}
/// @nodoc
class _$ResourceCopyWithImpl<$Res>
    implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._self, this._then);

  final Resource _self;
  final $Res Function(Resource) _then;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? content = freezed,Object? anchors = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,anchors: null == anchors ? _self.anchors : anchors // ignore: cast_nullable_to_non_nullable
as List<ResourceLink>,
  ));
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


/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResourceCopyWith<_Resource> get copyWith => __$ResourceCopyWithImpl<_Resource>(this, _$identity);

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

/// @nodoc
abstract mixin class _$ResourceCopyWith<$Res> implements $ResourceCopyWith<$Res> {
  factory _$ResourceCopyWith(_Resource value, $Res Function(_Resource) _then) = __$ResourceCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? content, List<ResourceLink> anchors
});




}
/// @nodoc
class __$ResourceCopyWithImpl<$Res>
    implements _$ResourceCopyWith<$Res> {
  __$ResourceCopyWithImpl(this._self, this._then);

  final _Resource _self;
  final $Res Function(_Resource) _then;

/// Create a copy of Resource
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? content = freezed,Object? anchors = null,}) {
  return _then(_Resource(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,anchors: null == anchors ? _self._anchors : anchors // ignore: cast_nullable_to_non_nullable
as List<ResourceLink>,
  ));
}


}


/// @nodoc
mixin _$ResourceLink {

 String get id; String get title; List<String>? get parents;

  /// Serializes this ResourceLink to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResourceLink&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.parents, parents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(parents));

@override
String toString() {
  return 'ResourceLink(id: $id, title: $title, parents: $parents)';
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResourceLink value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResourceLink() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResourceLink value)  $default,){
final _that = this;
switch (_that) {
case _ResourceLink():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResourceLink value)?  $default,){
final _that = this;
switch (_that) {
case _ResourceLink() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  List<String>? parents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResourceLink() when $default != null:
return $default(_that.id,_that.title,_that.parents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  List<String>? parents)  $default,) {final _that = this;
switch (_that) {
case _ResourceLink():
return $default(_that.id,_that.title,_that.parents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  List<String>? parents)?  $default,) {final _that = this;
switch (_that) {
case _ResourceLink() when $default != null:
return $default(_that.id,_that.title,_that.parents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResourceLink implements ResourceLink {
  const _ResourceLink({required this.id, required this.title, required final  List<String>? parents}): _parents = parents;
  factory _ResourceLink.fromJson(Map<String, dynamic> json) => _$ResourceLinkFromJson(json);

@override final  String id;
@override final  String title;
 final  List<String>? _parents;
@override List<String>? get parents {
  final value = _parents;
  if (value == null) return null;
  if (_parents is EqualUnmodifiableListView) return _parents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}



@override
Map<String, dynamic> toJson() {
  return _$ResourceLinkToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResourceLink&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._parents, _parents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_parents));

@override
String toString() {
  return 'ResourceLink(id: $id, title: $title, parents: $parents)';
}


}




// dart format on
