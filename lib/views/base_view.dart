import 'package:flutter/material.dart';
import 'package:flutter_path_generator/views/code_area.dart';
import 'package:flutter_path_generator/views/path_canvas.dart';

class BaseView extends StatelessWidget {
  const BaseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blueGrey,
                height: constraints.maxHeight,
                child: const CodeArea(),
              ),
            ),
            Expanded(
              flex: 7,
              child: SizedBox(
                height: constraints.maxHeight,
                child: PathCanvas(),
              ),
            ),
          ],
        ),
      );
    });
  }
}
