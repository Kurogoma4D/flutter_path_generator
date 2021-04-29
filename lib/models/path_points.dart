import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pathPointsProvider =
    StateNotifierProvider<PathPointsController, List<Offset>>(
        (_) => PathPointsController());

class PathPointsController extends StateNotifier<List<Offset>> {
  PathPointsController({List<Offset>? state}) : super(state ?? []);

  void addPoint(double x, double y) {
    state = [...state, Offset(x, y)];
  }

  void deleteAll() => state = [];
}
