import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'path_points.freezed.dart';
part 'path_points.g.dart';

List<Map<String, dynamic>> offsetListToJson(List<Offset> offsets) => [
      for (final offset in offsets)
        {
          'x': offset.dx,
          'y': offset.dy,
        },
    ];

List<Offset> offsetListFromJson(List<dynamic> json) {
  final offset = <Offset>[];

  for (final point in json) {
    final p = point as Map<String, dynamic>;
    final x = (p['x'] ?? p['dx']) as double?;
    final y = (p['y'] ?? p['dy']) as double?;
    assert(x != null && y != null);

    offset.add(Offset(x!, y!));
  }

  return offset;
}

@freezed
class PathPointsState with _$PathPointsState {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PathPointsState({
    @Default([]) List<PathGroup> groups,
  }) = _PathPointsState;

  factory PathPointsState.fromJson(Map<String, dynamic> json) =>
      _$PathPointsStateFromJson(json);
}

@freezed
class PathGroup with _$PathGroup {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PathGroup({
    @Default([])
    @JsonKey(toJson: offsetListToJson, fromJson: offsetListFromJson)
        List<Offset> points,
    @Default(false) bool isClosed,
  }) = _PathGroup;

  factory PathGroup.fromJson(Map<String, dynamic> json) =>
      _$PathGroupFromJson(json);
}
