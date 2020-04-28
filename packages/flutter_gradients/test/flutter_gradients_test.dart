import 'package:flutter_gradients/src/flutter_gradients.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('checkNullability', () async {
    expect(FlutterGradients.find(name), matcher);
  });
}
