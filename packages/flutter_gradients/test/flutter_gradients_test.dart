import 'package:flutter_gradients/src/core/flutter_gradients_names.dart';
import 'package:flutter_gradients/src/flutter_gradients.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('findByName', () async {
    expect(FlutterGradients.findByName(FlutterGradientNames.aboveTheSky),
        FlutterGradients.aboveTheSky());
  });
}
