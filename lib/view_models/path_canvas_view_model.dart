import 'dart:ui';

import 'package:flutter_path_generator/models/path_points.dart';
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

  void addPoint(double x, double y) =>
      read(pathPointsProvider.notifier).addPoint(x, y);

  void reset() => read(pathPointsProvider.notifier).deleteAll();
}
