import 'package:flutter/material.dart';
import 'package:flutter_gradients/flutter_gradients.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Gradients'),
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var listGradientName = FlutterGradientNames.values;

    return Center(
      child: ListView.separated(
        itemCount: listGradientName.length,
        separatorBuilder: (BuildContext context, int index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          var gradient = listGradientName[index];
          var name = FlutterGradients.names[gradient.index];

          return ListTile(
            title: Text(name),
            leading: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                    gradient: _findGradients(gradient), shape: BoxShape.circle),
              ),
            ),
            onTap: () {
              _onTap(name, gradient);
            },
          );
        },
      ),
    );
  }

  /// Find the gradient from his name in the list
  Gradient _findGradients(FlutterGradientNames gradient,
          [GradientType type = GradientType.linear]) =>
      FlutterGradients.findByName(gradient, type: type);

  /// onTap method
  _onTap(String name, FlutterGradientNames gradient) {
    showDialog(
        context: context,
        builder: (_) {
          var linearGradient = _findGradients(gradient);
          var radialGradient = _findGradients(gradient, GradientType.radial);
          var sweepGradient = _findGradients(gradient, GradientType.sweep);

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
            content: SingleChildScrollView(
              child: Column(
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
            ),
          );
        });
  }
}
