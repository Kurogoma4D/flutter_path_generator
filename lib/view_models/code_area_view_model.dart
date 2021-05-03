import 'dart:ui';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:flutter_path_generator/controllers/path_points_controller.dart';
import 'package:flutter_path_generator/models/canvas_origin.dart';
import 'package:flutter_path_generator/models/path_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final codeAreaViewModel = Provider.autoDispose(
  (ref) => CodeAreaViewModel(
    read: ref.read,
    groups: ref.watch(pathPointsProvider).groups,
    origin: ref.watch(canvasOriginProvider),
  ),
);

final _formatter = DartFormatter();
final _emitter = DartEmitter();

class CodeAreaViewModel {
  final List<PathGroup> groups;
  final Offset origin;
  final Reader read;

  CodeAreaViewModel({
    required this.read,
    required this.groups,
    required this.origin,
  });

  String get generatedCode {
    final codes = <String>[];

    for (final group in groups) {
      var path = CodeExpression(Code('Path')).call([]);

      for (final point in group.points) {
        final instruction = point == group.points.first ? 'moveTo' : 'lineTo';

        final calculatedPoint = point - origin;
        path = path.cascade(instruction).call([
          CodeExpression(Code('${calculatedPoint.dx.toStringAsFixed(3)}')),
          CodeExpression(Code('${calculatedPoint.dy.toStringAsFixed(3)}')),
        ]);
      }

      if (group.isClosed) {
        path = path.cascade('close').call([]);
      }

      final variable = Field(
        (b) => b
          ..name = 'path${groups.indexOf(group)}'
          ..assignment = path.code
          ..modifier = FieldModifier.final$,
      );

      codes.add(variable.accept(_emitter).toString());
    }

    return _formatter.format('${codes.join('\n')}');
  }
}
