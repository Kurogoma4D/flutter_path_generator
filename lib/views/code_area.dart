import 'package:flutter/material.dart';
import 'package:flutter_path_generator/view_models/code_area_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CodeArea extends ConsumerWidget {
  const CodeArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final code = watch(codeAreaViewModel).generatedCode;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: SelectableText(
        code,
        style: TextStyle(height: 1.4, fontSize: 22, color: Colors.white),
      ),
    );
  }
}
