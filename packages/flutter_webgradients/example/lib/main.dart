import 'package:flutter/material.dart';

import 'package:flutter_webgradients/flutter_webgradients.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = FlutterWebGradient.names();
    list.sort();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Web Gradient'),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(list.length, (index) {
              return Container(
                width: 200,
                height: 200,
                child: Card(
                  elevation: 2,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(list[index]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: FlutterWebGradient.find(list[index]),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
