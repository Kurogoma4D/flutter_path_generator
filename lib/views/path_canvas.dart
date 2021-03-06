import 'package:flutter/material.dart';
import 'package:flutter_path_generator/controllers/path_points_controller.dart';
import 'package:flutter_path_generator/models/canvas_mode.dart';
import 'package:flutter_path_generator/models/canvas_origin.dart';
import 'package:flutter_path_generator/models/path_points.dart';
import 'package:flutter_path_generator/models/pointer_location.dart';
import 'package:flutter_path_generator/view_models/path_canvas_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

const isDebug = !bool.fromEnvironment('dart.vm.product');

class PathCanvas extends ConsumerWidget {
  const PathCanvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Positioned.fill(
          child: MouseRegion(
            onHover: (event) => ref
                .read(pathCanvasViewModel)
                .updatePointerLocation(
                    event.localPosition.dx, event.localPosition.dy),
            child: GestureDetector(
              onTapUp: (detail) => ref.read(pathCanvasViewModel).onTapCanvas(
                  detail.localPosition.dx, detail.localPosition.dy),
              behavior: HitTestBehavior.opaque,
              child: const _Canvas(),
            ),
          ),
        ),
        Positioned(
          top: 16,
          left: 0,
          right: 0,
          child: Row(
            children: [
              const Gap(16),
              ElevatedButton(
                onPressed: () => ref.read(pathCanvasViewModel).reset(),
                child: Text('RESET'),
              ),
              const Gap(16),
              const _ModeSelect(),
            ],
          ),
        ),
        if (isDebug)
          Positioned(
            bottom: 0,
            left: 0,
            child: _DebugPointerLocation(),
          )
      ],
    );
  }
}

class _ModeSelect extends ConsumerWidget {
  const _ModeSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentMode = ref.watch(canvasMode);
    return ToggleButtons(
      children: [
        for (final mode in CanvasMode.values) Icon(_canvasModeToIcon(mode)),
      ],
      onPressed: (index) =>
          ref.read(pathCanvasViewModel).setCanvasMode(CanvasMode.values[index]),
      isSelected: CanvasMode.values.map((e) => e == currentMode).toList(),
    );
  }

  IconData _canvasModeToIcon(CanvasMode mode) {
    switch (mode) {
      case CanvasMode.addLinear:
        return Icons.timeline;
      case CanvasMode.setOrigin:
        return Icons.add_box_outlined;
    }
  }
}

class _Canvas extends ConsumerWidget {
  const _Canvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(pathPoints.select((value) => value.groups));
    final origin = ref.watch(canvasOrigin);
    return CustomPaint(
      painter: _PathPainter(groups: groups, origin: origin),
    );
  }
}

class _PathPainter extends CustomPainter {
  final List<PathGroup> groups;
  final Offset origin;

  _PathPainter({required this.groups, required this.origin});

  @override
  void paint(Canvas canvas, Size size) {
    _drawOrigin(canvas, size);

    final p = Paint()..color = Colors.cyan;
    final lineP = Paint()
      ..color = Colors.lightGreen
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    for (final group in groups) {
      for (final point in group.points) {
        canvas.drawCircle(point, 6.0, p);
      }

      canvas.drawPath(_generatePathToDraw(group), lineP);
    }
  }

  Path _generatePathToDraw(PathGroup group) {
    final path = Path();
    for (final point in group.points) {
      if (point == group.points.first) {
        path.moveTo(point.dx, point.dy);
        continue;
      }

      path.lineTo(point.dx, point.dy);
    }

    if (group.isClosed) path.close();
    return path;
  }

  void _drawOrigin(Canvas canvas, Size size) {
    final originPointP = Paint()
      ..color = Colors.black54
      ..strokeWidth = 3.0;
    final originLineP = Paint()
      ..color = Colors.black38
      ..strokeWidth = 2.0;

    canvas.drawLine(
        origin + Offset(0, -4), origin + Offset(0, 4), originPointP);
    canvas.drawLine(
        origin + Offset(-4, 0), origin + Offset(4, 0), originPointP);
    canvas.drawLine(
        Offset(origin.dx, 0), Offset(origin.dx, size.height), originLineP);
    canvas.drawLine(
        Offset(0, origin.dy), Offset(size.width, origin.dy), originLineP);
  }

  @override
  bool shouldRepaint(covariant _PathPainter oldDelegate) =>
      oldDelegate.groups.length != groups.length ||
      origin != oldDelegate.origin;
}

class _DebugPointerLocation extends ConsumerWidget {
  const _DebugPointerLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = ref.watch(pointerLocation);
    return Text('$location}');
  }
}
