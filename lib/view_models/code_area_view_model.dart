import 'dart:ui';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:flutter_path_generator/models/canvas_origin.dart';
import 'package:flutter_path_generator/models/path_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final codeAreaViewModel = Provider.autoDispose(
  (ref) => CodeAreaViewModel(
    read: ref.read,
    points: ref.watch(pathPointsProvider),
    origin: ref.watch(canvasOriginProvider),
  ),
);

final _formatter = DartFormatter();
final _emitter = DartEmitter();

class CodeAreaViewModel {
  final List<Offset> points;
  final Offset origin;
  final Reader read;

  CodeAreaViewModel({
    required this.read,
    required this.points,
    required this.origin,
  });

  String get generatedCode {
    var path = CodeExpression(Code('Path')).call([]);

    for (final point in points) {
      final calculatedPoint = point - origin;
      path = path.cascade('lineTo').call([
        CodeExpression(Code('${calculatedPoint.dx.toStringAsFixed(3)}')),
        CodeExpression(Code('${calculatedPoint.dy.toStringAsFixed(3)}')),
      ]);
    }

    final variable = Field(
      (b) => b
        ..name = 'path'
        ..assignment = path.code
        ..modifier = FieldModifier.final$,
    );

    return _formatter.format('${variable.accept(_emitter)}');
  }
}
