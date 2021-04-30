import 'package:flutter_riverpod/flutter_riverpod.dart';

enum CanvasMode {
  addLinear,
  setOrigin,
}

final canvasModeProvider = StateProvider((_) => CanvasMode.addLinear);
