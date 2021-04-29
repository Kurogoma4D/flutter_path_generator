import 'package:flutter/material.dart';
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
                color: Colors.teal,
                height: constraints.maxHeight,
                child: Center(
                  child: Text('yey'),
                ),
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
