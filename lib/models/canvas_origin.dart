import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final canvasOriginProvider =
    StateNotifierProvider<CanvasOriginController, Offset>(
        (_) => CanvasOriginController());

class CanvasOriginController extends StateNotifier<Offset> {
  CanvasOriginController({Offset? state}) : super(state ?? Offset.zero);

  void setOrigin(Offset point) => state = point;
}
