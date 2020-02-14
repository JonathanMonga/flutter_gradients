import 'package:flutter/widgets.dart';

import 'package:vector_math/vector_math_64.dart' show radians;

/// The method that create a SweepGradient object
SweepGradient create(
  AlignmentGeometry center,
  double startAngle,
  double endAngle,
  double angle,
  List<Color> colors,
  List<double> stops,
  TileMode tileMode,
) =>
    SweepGradient(
      center: center,
      startAngle: startAngle,
      endAngle: endAngle,
      colors: colors,
      stops: stops,
      tileMode: tileMode,
      transform: GradientRotation(radians(angle)),
    );
