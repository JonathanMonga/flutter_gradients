import 'package:flutter/material.dart';

import 'package:flutter_gradients/flutter_gradients.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Gradients'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: FlutterGradients.warmFlame(type: GradientType.sweep),
            ),
          ),
        ),
      ),
    );
  }
}
