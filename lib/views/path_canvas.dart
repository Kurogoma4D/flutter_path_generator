import 'package:flutter/material.dart';
import 'package:flutter_path_generator/view_models/path_canvas_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class PathCanvas extends StatelessWidget {
  const PathCanvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (detail) => context
          .read(pathCanvasViewModel)
          .addPoint(detail.localPosition.dx, detail.localPosition.dy),
      behavior: HitTestBehavior.opaque,
      child: Stack(
        children: [
          const _Canvas(),
          Positioned(
            top: 16,
            left: 0,
            right: 0,
            child: Row(
              children: [
                const Gap(16),
                ElevatedButton(
                  onPressed: () => context.read(pathCanvasViewModel).reset(),
                  child: Text('RESET'),
                ),
                const Gap(16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('FOO'),
                ),
                const Gap(16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('BAR'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Canvas extends ConsumerWidget {
  const _Canvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final points = watch(pathCanvasViewModel).points;
    return CustomPaint(
      painter: _PathPainter(points: points),
    );
  }
}

class _PathPainter extends CustomPainter {
  final List<Offset> points;

  _PathPainter({required this.points});

  @override
  void paint(Canvas canvas, Size size) {
    final p = Paint()..color = Colors.cyan;
    final lineP = Paint()
      ..color = Colors.lightGreen
      ..strokeWidth = 4.0;
    for (var i = 0; i < points.length; i++) {
      final point = points[i];
      canvas.drawCircle(point, 6.0, p);
      if (points.length > 1 && i != 0) {
        canvas.drawLine(points[i - 1], point, lineP);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _PathPainter oldDelegate) =>
      oldDelegate.points.length != points.length;
}
