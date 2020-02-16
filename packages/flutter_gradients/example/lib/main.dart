import 'package:flutter/material.dart';
import 'package:flutter_gradients_example/linear_gradients_page.dart';

import 'package:flutter_gradients_example/radial_gradients_page.dart';
import 'package:flutter_gradients_example/sweep_gradients_page.dart';

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
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Flutter Radial Gradients'),
                onPressed: _onPressed(context, 0),
              ),
              RaisedButton(
                child: Text('Flutter linear Gradients'),
                onPressed: _onPressed(context, 1),
              ),
              RaisedButton(
                child: Text('Flutter sweep Gradients'),
                onPressed: _onPressed(context, 2),
              )
            ],
          ),
        ),
      ),
    );
  }

  _onPressed(BuildContext context, int index) {
    if (index == 0)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FlutterRadialGradientsPage()));
    else if (index == 1)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FlutterLinearGradientsPage()));
    else
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => FlutterSweepGradientsPage()));
  }
}
