import 'package:flutter/material.dart';

import 'package:flutter_gradients/flutter_gradients.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = FlutterLinearGradient.names();
    list.sort();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Flutter Gradients'),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(list.length, (index) {
              return Container(
                width: 200,
                height: 200,
                child: Card(
                  elevation: 3,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            list[index],
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: FlutterLinearGradient.find(list[index]),
                          ),
                        ),
                      ],
                    ),
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
