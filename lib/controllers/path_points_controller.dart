import 'dart:ui';

import 'package:flutter_path_generator/models/path_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pathPointsProvider =
    StateNotifierProvider<PathPointsController, PathPointsState>(
        (_) => PathPointsController());

class PathPointsController extends StateNotifier<PathPointsState> {
  PathPointsController({PathPointsState? state})
      : super(state ?? PathPointsState());

  PathGroup _selectGroup({int? index}) =>
      index == null ? state.groups.last : state.groups[index];

  void _updatePathGroup(PathGroup target, PathGroup Function() update) {
    state = state.copyWith(groups: [
      for (final group in state.groups)
        if (target == group) update() else group
    ]);
  }

  void addPoint(double x, double y, {int? groupIndex}) {
    if (state.groups.isEmpty) addGroup();

    final selectedGroup = _selectGroup(index: groupIndex);

    _updatePathGroup(
      selectedGroup,
      () => selectedGroup.copyWith(
        points: [...selectedGroup.points, Offset(x, y)],
      ),
    );
  }

  void closePathGroup({int? groupIndex}) {
    final selectedGroup = _selectGroup(index: groupIndex);

    _updatePathGroup(
      selectedGroup,
      () => selectedGroup.copyWith(isClosed: true),
    );
  }

  void addGroup() {
    state = state.copyWith(groups: [...state.groups, PathGroup()]);
  }

  void deleteAll() => state = PathPointsState(groups: []);
}
