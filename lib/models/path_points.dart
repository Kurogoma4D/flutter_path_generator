import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'path_points.freezed.dart';

@freezed
class PathPointsState with _$PathPointsState {
  const factory PathPointsState({
    @Default([]) List<PathGroup> groups,
  }) = _PathPointsState;
}

@freezed
class PathGroup with _$PathGroup {
  const factory PathGroup({
    @Default([]) List<Offset> points,
    @Default(false) bool isClosed,
  }) = _PathGroup;
}
