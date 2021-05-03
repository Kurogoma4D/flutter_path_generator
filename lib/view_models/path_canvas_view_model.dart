import 'dart:ui';

import 'package:flutter_path_generator/models/canvas_mode.dart';
import 'package:flutter_path_generator/models/canvas_origin.dart';
import 'package:flutter_path_generator/models/path_points.dart';
import 'package:flutter_path_generator/models/pointer_location.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pathCanvasViewModel = Provider.autoDispose(
  (ref) => PathCanvasViewModel(
    read: ref.read,
    points: ref.watch(pathPointsProvider),
  ),
);

class PathCanvasViewModel {
  final List<Offset> points;
  final Reader read;

  PathCanvasViewModel({required this.read, required this.points});

  void onTapCanvas(double x, double y) {
    switch (read(canvasModeProvider).state) {
      case CanvasMode.addLinear:
        read(pathPointsProvider.notifier).addPoint(x, y);
        break;
      case CanvasMode.setOrigin:
        read(canvasOriginProvider.notifier).setOrigin(Offset(x, y));
        break;
    }
  }

  void setCanvasMode(CanvasMode mode) => read(canvasModeProvider).state = mode;

  void reset() => read(pathPointsProvider.notifier).deleteAll();

  void updatePointerLocation(double x, double y) =>
      read(pointerLocationProvider).state = Offset(x, y);
}
