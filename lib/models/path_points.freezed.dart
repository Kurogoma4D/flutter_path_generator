// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'path_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PathPointsState {
  List<PathGroup> get groups => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PathPointsStateCopyWith<PathPointsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathPointsStateCopyWith<$Res> {
  factory $PathPointsStateCopyWith(
          PathPointsState value, $Res Function(PathPointsState) then) =
      _$PathPointsStateCopyWithImpl<$Res>;
  $Res call({List<PathGroup> groups});
}

/// @nodoc
class _$PathPointsStateCopyWithImpl<$Res>
    implements $PathPointsStateCopyWith<$Res> {
  _$PathPointsStateCopyWithImpl(this._value, this._then);

  final PathPointsState _value;
  // ignore: unused_field
  final $Res Function(PathPointsState) _then;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_value.copyWith(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<PathGroup>,
    ));
  }
}

/// @nodoc
abstract class _$$_PathPointsStateCopyWith<$Res>
    implements $PathPointsStateCopyWith<$Res> {
  factory _$$_PathPointsStateCopyWith(
          _$_PathPointsState value, $Res Function(_$_PathPointsState) then) =
      __$$_PathPointsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<PathGroup> groups});
}

/// @nodoc
class __$$_PathPointsStateCopyWithImpl<$Res>
    extends _$PathPointsStateCopyWithImpl<$Res>
    implements _$$_PathPointsStateCopyWith<$Res> {
  __$$_PathPointsStateCopyWithImpl(
      _$_PathPointsState _value, $Res Function(_$_PathPointsState) _then)
      : super(_value, (v) => _then(v as _$_PathPointsState));

  @override
  _$_PathPointsState get _value => super._value as _$_PathPointsState;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_$_PathPointsState(
      groups: groups == freezed
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<PathGroup>,
    ));
  }
}

/// @nodoc

class _$_PathPointsState
    with DiagnosticableTreeMixin
    implements _PathPointsState {
  const _$_PathPointsState({final List<PathGroup> groups = const []})
      : _groups = groups;

  final List<PathGroup> _groups;
  @override
  @JsonKey()
  List<PathGroup> get groups {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PathPointsState(groups: $groups)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PathPointsState'))
      ..add(DiagnosticsProperty('groups', groups));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PathPointsState &&
            const DeepCollectionEquality().equals(other._groups, _groups));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groups));

  @JsonKey(ignore: true)
  @override
  _$$_PathPointsStateCopyWith<_$_PathPointsState> get copyWith =>
      __$$_PathPointsStateCopyWithImpl<_$_PathPointsState>(this, _$identity);
}

abstract class _PathPointsState implements PathPointsState {
  const factory _PathPointsState({final List<PathGroup> groups}) =
      _$_PathPointsState;

  @override
  List<PathGroup> get groups => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PathPointsStateCopyWith<_$_PathPointsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PathGroup {
  List<Offset> get points => throw _privateConstructorUsedError;
  bool get isClosed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PathGroupCopyWith<PathGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathGroupCopyWith<$Res> {
  factory $PathGroupCopyWith(PathGroup value, $Res Function(PathGroup) then) =
      _$PathGroupCopyWithImpl<$Res>;
  $Res call({List<Offset> points, bool isClosed});
}

/// @nodoc
class _$PathGroupCopyWithImpl<$Res> implements $PathGroupCopyWith<$Res> {
  _$PathGroupCopyWithImpl(this._value, this._then);

  final PathGroup _value;
  // ignore: unused_field
  final $Res Function(PathGroup) _then;

  @override
  $Res call({
    Object? points = freezed,
    Object? isClosed = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
      isClosed: isClosed == freezed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_PathGroupCopyWith<$Res> implements $PathGroupCopyWith<$Res> {
  factory _$$_PathGroupCopyWith(
          _$_PathGroup value, $Res Function(_$_PathGroup) then) =
      __$$_PathGroupCopyWithImpl<$Res>;
  @override
  $Res call({List<Offset> points, bool isClosed});
}

/// @nodoc
class __$$_PathGroupCopyWithImpl<$Res> extends _$PathGroupCopyWithImpl<$Res>
    implements _$$_PathGroupCopyWith<$Res> {
  __$$_PathGroupCopyWithImpl(
      _$_PathGroup _value, $Res Function(_$_PathGroup) _then)
      : super(_value, (v) => _then(v as _$_PathGroup));

  @override
  _$_PathGroup get _value => super._value as _$_PathGroup;

  @override
  $Res call({
    Object? points = freezed,
    Object? isClosed = freezed,
  }) {
    return _then(_$_PathGroup(
      points: points == freezed
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<Offset>,
      isClosed: isClosed == freezed
          ? _value.isClosed
          : isClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PathGroup with DiagnosticableTreeMixin implements _PathGroup {
  const _$_PathGroup(
      {final List<Offset> points = const [], this.isClosed = false})
      : _points = points;

  final List<Offset> _points;
  @override
  @JsonKey()
  List<Offset> get points {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  @JsonKey()
  final bool isClosed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PathGroup(points: $points, isClosed: $isClosed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PathGroup'))
      ..add(DiagnosticsProperty('points', points))
      ..add(DiagnosticsProperty('isClosed', isClosed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PathGroup &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            const DeepCollectionEquality().equals(other.isClosed, isClosed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_points),
      const DeepCollectionEquality().hash(isClosed));

  @JsonKey(ignore: true)
  @override
  _$$_PathGroupCopyWith<_$_PathGroup> get copyWith =>
      __$$_PathGroupCopyWithImpl<_$_PathGroup>(this, _$identity);
}

abstract class _PathGroup implements PathGroup {
  const factory _PathGroup({final List<Offset> points, final bool isClosed}) =
      _$_PathGroup;

  @override
  List<Offset> get points => throw _privateConstructorUsedError;
  @override
  bool get isClosed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PathGroupCopyWith<_$_PathGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
