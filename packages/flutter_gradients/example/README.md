# How To Use

A simple way to use this library.

```dart
import 'package:flutter/material.dart';

import 'package:flutter_gradients/flutter_gradients.dart';

import 'package:flutter/material.dart';

import 'package:flutter_gradients/flutter_gradients.dart';

class FlutterRadialGradientsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Radial Gradients'),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(FlutterGradients.names().length, (index) {
              var gradientName = FlutterGradients.names()[index];

              var text = Text(gradientName);

              // Change just the type of gradient to i.e. GradientType.linear or GradientType.sweep
              // And Is that all.
              var gradient = _findGradients(gradientName, GradientType.radial);

              var boxDecoration =
                  BoxDecoration(shape: BoxShape.circle, gradient: gradient);

              var containerGradientCircle =
                  Container(width: 300, height: 300, decoration: boxDecoration);
              var centerText = Center(child: text);

              var column =
                  Column(children: [centerText, containerGradientCircle]);

              return Center(child: column);
            }),
          ),
        ),
      ),
    );
  }

  /// Find the gradient from his name in the list
  Gradient _findGradients(String gradientName, GradientType type) =>
      FlutterGradients.find(gradientName, type: type);
}


```
