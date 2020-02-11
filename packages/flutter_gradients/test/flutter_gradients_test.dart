import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gradients/flutter_gradients.dart';

void main() {
  test('test method', () async {
    assert(FlutterGradient.find("Above The Sky") is Gradient);
  });

  test('find method', () async {
    expect(FlutterGradient.names()[0],
        FlutterGradient.find(FlutterGradient.names()[0]));
  });

  test('gradient method', () async {
    expect("Above The Sky", FlutterGradient.aboveTheSky());
  });
}
