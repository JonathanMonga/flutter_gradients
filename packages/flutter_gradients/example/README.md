# How To Use

A simple way to use this library.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_gradients/flutter_gradients.dart';

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var listGradient = FlutterGradients.names();
    listGradient.sort();

    return Center(
      child: ListView.separated(
        itemCount: listGradient.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          var name = listGradient[index];

          return ListTile(
            title: Text(name),
            onTap: () {
              _onTap(name);
            },
          );
        },
      ),
    );
  }

  _onTap(String name) {
    showDialog(
        context: context,
        builder: (_) {
          var linearGradient = _findGradients(name);
          var radialGradient = _findGradients(name, GradientType.radial);
          var sweepGradient = _findGradients(name, GradientType.sweep);

          var linearGradientBoxDecoration =
              BoxDecoration(shape: BoxShape.circle, gradient: linearGradient);
          var radialGradientBoxDecoration =
              BoxDecoration(shape: BoxShape.circle, gradient: radialGradient);
          var sweepGradientBoxDecoration =
              BoxDecoration(shape: BoxShape.circle, gradient: sweepGradient);

          var size = 200.0;

          var linearGradientCircleContainer = Container(
              width: size,
              height: size,
              decoration: linearGradientBoxDecoration);
          var radialGradientCircleContainer = Container(
              width: size,
              height: size,
              decoration: radialGradientBoxDecoration);
          var sweepGradientCircleContainer = Container(
              width: size,
              height: size,
              decoration: sweepGradientBoxDecoration);

          return AlertDialog(
            title: Center(child: Text(name)),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text("LinearGradient"),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: linearGradientCircleContainer),
                    Text("RadialGradient"),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: radialGradientCircleContainer),
                    Text("SweepGradient"),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: sweepGradientCircleContainer),
                  ],
                )
              ],
            ),
          );
        });
  }

  /// Find the gradient from his name in the list
  Gradient _findGradients(String gradientName,
          [GradientType type = GradientType.linear]) =>
      FlutterGradients.find(gradientName, type: type);
}

```
