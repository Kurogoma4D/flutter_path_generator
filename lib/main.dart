import 'package:flutter/material.dart';
import 'package:flutter_path_generator/base_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Path Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BaseView(),
    );
  }
}
