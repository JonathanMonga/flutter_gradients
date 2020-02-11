import 'package:flutter/widgets.dart';

import 'package:vector_math/vector_math_64.dart' show radians;

LinearGradient create(double angle, List<Color> colors, List<double> stops) =>
    LinearGradient(
      colors: colors,
      stops: stops,
      tileMode: TileMode.repeated,
      transform: GradientRotation(radians(angle)),
    );
