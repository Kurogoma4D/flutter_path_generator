// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'path_points.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PathPointsState _$_$_PathPointsStateFromJson(Map<String, dynamic> json) {
  return _$_PathPointsState(
    groups: (json['groups'] as List<dynamic>?)
            ?.map((e) => PathGroup.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_PathPointsStateToJson(_$_PathPointsState instance) =>
    <String, dynamic>{
      'groups': instance.groups,
    };

_$_PathGroup _$_$_PathGroupFromJson(Map<String, dynamic> json) {
  return _$_PathGroup(
    points: offsetListFromJson(json['points'] as List),
    isClosed: json['is_closed'] as bool? ?? false,
  );
}

Map<String, dynamic> _$_$_PathGroupToJson(_$_PathGroup instance) =>
    <String, dynamic>{
      'points': offsetListToJson(instance.points),
      'is_closed': instance.isClosed,
    };
