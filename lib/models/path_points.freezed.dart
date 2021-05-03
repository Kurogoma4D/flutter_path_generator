// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'path_points.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PathPointsState _$PathPointsStateFromJson(Map<String, dynamic> json) {
  return _PathPointsState.fromJson(json);
}

/// @nodoc
class _$PathPointsStateTearOff {
  const _$PathPointsStateTearOff();

  _PathPointsState call({List<PathGroup> groups = const []}) {
    return _PathPointsState(
      groups: groups,
    );
  }

  PathPointsState fromJson(Map<String, Object> json) {
    return PathPointsState.fromJson(json);
  }
}

/// @nodoc
const $PathPointsState = _$PathPointsStateTearOff();

/// @nodoc
mixin _$PathPointsState {
  List<PathGroup> get groups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
abstract class _$PathPointsStateCopyWith<$Res>
    implements $PathPointsStateCopyWith<$Res> {
  factory _$PathPointsStateCopyWith(
          _PathPointsState value, $Res Function(_PathPointsState) then) =
      __$PathPointsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<PathGroup> groups});
}

/// @nodoc
class __$PathPointsStateCopyWithImpl<$Res>
    extends _$PathPointsStateCopyWithImpl<$Res>
    implements _$PathPointsStateCopyWith<$Res> {
  __$PathPointsStateCopyWithImpl(
      _PathPointsState _value, $Res Function(_PathPointsState) _then)
      : super(_value, (v) => _then(v as _PathPointsState));

  @override
  _PathPointsState get _value => super._value as _PathPointsState;

  @override
  $Res call({
    Object? groups = freezed,
  }) {
    return _then(_PathPointsState(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<PathGroup>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PathPointsState
    with DiagnosticableTreeMixin
    implements _PathPointsState {
  const _$_PathPointsState({this.groups = const []});

  factory _$_PathPointsState.fromJson(Map<String, dynamic> json) =>
      _$_$_PathPointsStateFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<PathGroup> groups;

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
        (other is _PathPointsState &&
            (identical(other.groups, groups) ||
                const DeepCollectionEquality().equals(other.groups, groups)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(groups);

  @JsonKey(ignore: true)
  @override
  _$PathPointsStateCopyWith<_PathPointsState> get copyWith =>
      __$PathPointsStateCopyWithImpl<_PathPointsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PathPointsStateToJson(this);
  }
}

abstract class _PathPointsState implements PathPointsState {
  const factory _PathPointsState({List<PathGroup> groups}) = _$_PathPointsState;

  factory _PathPointsState.fromJson(Map<String, dynamic> json) =
      _$_PathPointsState.fromJson;

  @override
  List<PathGroup> get groups => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PathPointsStateCopyWith<_PathPointsState> get copyWith =>
      throw _privateConstructorUsedError;
}

PathGroup _$PathGroupFromJson(Map<String, dynamic> json) {
  return _PathGroup.fromJson(json);
}

/// @nodoc
class _$PathGroupTearOff {
  const _$PathGroupTearOff();

  _PathGroup call(
      {@JsonKey(toJson: offsetListToJson, fromJson: offsetListFromJson)
          List<Offset> points = const [],
      bool isClosed = false}) {
    return _PathGroup(
      points: points,
      isClosed: isClosed,
    );
  }

  PathGroup fromJson(Map<String, Object> json) {
    return PathGroup.fromJson(json);
  }
}

/// @nodoc
const $PathGroup = _$PathGroupTearOff();

/// @nodoc
mixin _$PathGroup {
  @JsonKey(toJson: offsetListToJson, fromJson: offsetListFromJson)
  List<Offset> get points => throw _privateConstructorUsedError;
  bool get isClosed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PathGroupCopyWith<PathGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PathGroupCopyWith<$Res> {
  factory $PathGroupCopyWith(PathGroup value, $Res Function(PathGroup) then) =
      _$PathGroupCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(toJson: offsetListToJson, fromJson: offsetListFromJson)
          List<Offset> points,
      bool isClosed});
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
abstract class _$PathGroupCopyWith<$Res> implements $PathGroupCopyWith<$Res> {
  factory _$PathGroupCopyWith(
          _PathGroup value, $Res Function(_PathGroup) then) =
      __$PathGroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(toJson: offsetListToJson, fromJson: offsetListFromJson)
          List<Offset> points,
      bool isClosed});
}

/// @nodoc
class __$PathGroupCopyWithImpl<$Res> extends _$PathGroupCopyWithImpl<$Res>
    implements _$PathGroupCopyWith<$Res> {
  __$PathGroupCopyWithImpl(_PathGroup _value, $Res Function(_PathGroup) _then)
      : super(_value, (v) => _then(v as _PathGroup));

  @override
  _PathGroup get _value => super._value as _PathGroup;

  @override
  $Res call({
    Object? points = freezed,
    Object? isClosed = freezed,
  }) {
    return _then(_PathGroup(
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

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PathGroup with DiagnosticableTreeMixin implements _PathGroup {
  const _$_PathGroup(
      {@JsonKey(toJson: offsetListToJson, fromJson: offsetListFromJson)
          this.points = const [],
      this.isClosed = false});

  factory _$_PathGroup.fromJson(Map<String, dynamic> json) =>
      _$_$_PathGroupFromJson(json);

  @override
  @JsonKey(toJson: offsetListToJson, fromJson: offsetListFromJson)
  final List<Offset> points;
  @JsonKey(defaultValue: false)
  @override
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
        (other is _PathGroup &&
            (identical(other.points, points) ||
                const DeepCollectionEquality().equals(other.points, points)) &&
            (identical(other.isClosed, isClosed) ||
                const DeepCollectionEquality()
                    .equals(other.isClosed, isClosed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(points) ^
      const DeepCollectionEquality().hash(isClosed);

  @JsonKey(ignore: true)
  @override
  _$PathGroupCopyWith<_PathGroup> get copyWith =>
      __$PathGroupCopyWithImpl<_PathGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PathGroupToJson(this);
  }
}

abstract class _PathGroup implements PathGroup {
  const factory _PathGroup(
      {@JsonKey(toJson: offsetListToJson, fromJson: offsetListFromJson)
          List<Offset> points,
      bool isClosed}) = _$_PathGroup;

  factory _PathGroup.fromJson(Map<String, dynamic> json) =
      _$_PathGroup.fromJson;

  @override
  @JsonKey(toJson: offsetListToJson, fromJson: offsetListFromJson)
  List<Offset> get points => throw _privateConstructorUsedError;
  @override
  bool get isClosed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PathGroupCopyWith<_PathGroup> get copyWith =>
      throw _privateConstructorUsedError;
}
