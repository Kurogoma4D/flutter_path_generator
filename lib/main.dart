import 'package:flutter/material.dart';
import 'package:flutter_path_generator/views/base_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
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
