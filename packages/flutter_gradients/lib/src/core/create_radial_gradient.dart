import 'package:flutter/widgets.dart';

import 'package:vector_math/vector_math_64.dart' show radians;

/// The method that create a RadialGradient object
RadialGradient create(
  AlignmentGeometry center,
  double radius,
  double angle,
  List<Color> colors,
  List<double> stops,
  TileMode tileMode,
) =>
    RadialGradient(
      center: center,
      colors: colors,
      radius: radius,
      stops: stops,
      tileMode: tileMode,
      transform: GradientRotation(radians(angle)),
    );
