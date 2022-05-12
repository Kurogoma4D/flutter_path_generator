import 'dart:ui';

import 'package:flutter_path_generator/controllers/path_points_controller.dart';
import 'package:flutter_path_generator/models/canvas_mode.dart';
import 'package:flutter_path_generator/models/canvas_origin.dart';
import 'package:flutter_path_generator/models/pointer_location.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pathCanvasViewModel = Provider.autoDispose(
  (ref) => PathCanvasViewModel(read: ref.read),
);

final _latestGroupProvider = Provider.autoDispose((ref) {
  final groups = ref.watch(pathPoints).groups;
  return groups.isNotEmpty ? groups.last : null;
});

class PathCanvasViewModel {
  final Reader read;

  PathCanvasViewModel({required this.read});

  void onTapCanvas(double x, double y) {
    switch (read(canvasMode)) {
      case CanvasMode.addLinear:
        _handleAddLinear(x, y);
        break;
      case CanvasMode.setOrigin:
        read(canvasOrigin.notifier).setOrigin(Offset(x, y));
        break;
    }
  }

  void _handleAddLinear(double x, double y) {
    final latest = read(_latestGroupProvider);
    if (latest == null) {
      read(pathPoints.notifier).addPoint(x, y);
      return;
    }

    final compared =
        Offset(latest.points.first.dx - x, latest.points.first.dy - y);
    if (compared.distance < 16.0) {
      read(pathPoints.notifier).closePathGroup();
      return;
    }

    if (latest.isClosed) read(pathPoints.notifier).addGroup();

    read(pathPoints.notifier).addPoint(x, y);
  }

  void setCanvasMode(CanvasMode mode) => read(canvasMode.notifier).state = mode;

  void reset() => read(pathPoints.notifier).deleteAll();

  void updatePointerLocation(double x, double y) =>
      read(pointerLocation.notifier).state = Offset(x, y);
}
