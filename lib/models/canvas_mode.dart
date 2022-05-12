import 'package:flutter_riverpod/flutter_riverpod.dart';

enum CanvasMode {
  addLinear,
  setOrigin,
}

final canvasMode = StateProvider((_) => CanvasMode.addLinear);
