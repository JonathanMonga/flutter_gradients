import 'package:flutter/material.dart';
import 'package:flutter_gradients_example/linear_gradients_page.dart';

import 'package:flutter_gradients_example/radial_gradients_page.dart';
import 'package:flutter_gradients_example/sweep_gradients_page.dart';

const String RADIAL_ROUTE = '/flutter_radial_gradients_page';
const String LINEAR_ROUTE = '/flutter_linear_gradients_page';
const String SWEEP_ROUTE = '/flutter_sweep_gradients_page';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
        routes: <String, WidgetBuilder>{
          RADIAL_ROUTE: (BuildContext context) => FlutterRadialGradientsPage(),
          LINEAR_ROUTE: (BuildContext context) => FlutterLinearGradientsPage(),
          SWEEP_ROUTE: (BuildContext context) => FlutterSweepGradientsPage(),
        },
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Gradients'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Flutter Radial Gradients'),
              onPressed: _onPressed(context, RADIAL_ROUTE),
            ),
            RaisedButton(
              child: Text('Flutter linear Gradients'),
              onPressed: _onPressed(context, LINEAR_ROUTE),
            ),
            RaisedButton(
              child: Text('Flutter sweep Gradients'),
              onPressed: _onPressed(context, SWEEP_ROUTE),
            )
          ],
        ),
      ),
    );
  }

  _onPressed(BuildContext context, String index) {
    Navigator.of(context).pushNamed(index);
  }
}
