import 'dart:ui';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:flutter_path_generator/models/path_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final codeAreaViewModel = Provider.autoDispose(
  (ref) => CodeAreaViewModel(
    read: ref.read,
    points: ref.watch(pathPointsProvider),
  ),
);

final _formatter = DartFormatter();
final _emitter = DartEmitter();

class CodeAreaViewModel {
  final List<Offset> points;
  final Reader read;

  CodeAreaViewModel({required this.read, required this.points});

  String get generatedCode {
    final path = CodeExpression(Code('Path()'))
      ..cascade('close')
      ..call([]);

    final variable = Field(
      (b) => b
        ..name = 'path'
        ..assignment = path.code
        ..modifier = FieldModifier.final$,
    );

    return _formatter.format('${variable.accept(_emitter)}');
  }
}
