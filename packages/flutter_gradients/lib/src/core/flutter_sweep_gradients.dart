import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

import 'package:flutter_gradients/src/core/flutter_gradients_hex.dart';
import 'package:flutter_gradients/src/core/create_sweep_gradient.dart';

/// A facade class that contains all the methodes that generate a `SweepGradient`,
/// and it required to set the gradient type to `GradientType.sweep`, because by
/// default it sets to `GradientType.linear`
///
/// Sample code to use :
///
/// ```
/// Container(
///   width: 150,
///   height: 150,
///   decoration: BoxDecoration(
///     shape: BoxShape.circle,
///     gradient: FlutterGradients.warmFlame(type: GradientType.sweep),
///   ),
/// ),
/// ```
/// You can set also the `tileMode`, that by default is set on `TileMode.repeated`
///
/// ```
/// FlutterGradients.warmFlame(type: GradientType.sweep, tileMode = TileMode.clamp),
/// ```
class FlutterSweepGradients {
  static SweepGradient sweep(
          String name,
          AlignmentGeometry center,
          double startAngle,
          double endAngle,
          double angle,
          List<Color> colors,
          List<double> stops,
          TileMode tileMode) =>
      create(center, startAngle, endAngle, angle, colors, stops, tileMode);

  /// 1. Warm Flame
  static Gradient warmFlame({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Warm Flame",
        center,
        startAngle,
        endAngle,
        -45.0,
        [
          stringToColor("#ff9a9e"),
          stringToColor("#fad0c4"),
          stringToColor("#fad0c4")
        ],
        [0.0, 0.99, 1.0],
        tileMode,
      );

  /// 2. Night Fade
  static Gradient nightFade({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Night Fade",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#a18cd1"), stringToColor("#fbc2eb")],
        [0.0, 1.0],
        tileMode,
      );

  /// 3. Spring Warmth
  static Gradient springWarmth({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Spring Warmth",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#fad0c4"),
          stringToColor("#fad0c4"),
          stringToColor("#ffd1ff")
        ],
        [0.0, 0.01, 1.0],
        tileMode,
      );

  /// 4. Juicy Peach
  static Gradient juicyPeach({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Juicy Peach",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#ffecd2"), stringToColor("#fcb69f")],
        [0.0, 1.0],
        tileMode,
      );

  /// 5. Young Passion
  static Gradient youngPassion({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Young Passion",
        center,
        startAngle,
        endAngle,
        0.0,
        [
          stringToColor("#ff8177"),
          stringToColor("#ff867a"),
          stringToColor("#ff8c7f"),
          stringToColor("#f99185"),
          stringToColor("#cf556c"),
          stringToColor("#b12a5b")
        ],
        [0.0, 0.0, 0.21, 0.52, 0.78, 1.0],
        tileMode,
      );

  /// 6. Lady Lips
  static Gradient ladyLips({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Lady Lips",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#ff9a9e"),
          stringToColor("#fecfef"),
          stringToColor("#fecfef")
        ],
        [0.0, 0.99, 1.0],
        tileMode,
      );

  /// 7. Sunny Morning
  static Gradient sunnyMorning({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sunny Morning",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#f6d365"), stringToColor("#fda085")],
        [0.0, 1.0],
        tileMode,
      );

  /// 8. Rainy Ashville
  static Gradient rainyAshville({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Rainy Ashville",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#fbc2eb"), stringToColor("#a6c1ee")],
        [0.0, 1.0],
        tileMode,
      );

  /// 9. Frozen Dreams
  static Gradient frozenDreams({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Frozen Dreams",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#fdcbf1"),
          stringToColor("#fdcbf1"),
          stringToColor("#e6dee9")
        ],
        [0.0, 0.01, 1.0],
        tileMode,
      );

  /// 10. Winter Neva
  static Gradient winterNeva({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Winter Neva",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#a1c4fd"), stringToColor("#c2e9fb")],
        [0.0, 1.0],
        tileMode,
      );

  /// 11. Dusty Grass
  static Gradient dustyGrass({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Dusty Grass",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#d4fc79"), stringToColor("#96e6a1")],
        [0.0, 1.0],
        tileMode,
      );

  /// 12. Tempting Azure
  static Gradient temptingAzure({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Tempting Azure",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#84fab0"), stringToColor("#8fd3f4")],
        [0.0, 1.0],
        tileMode,
      );

  /// 13. Heavy Rain
  static Gradient heavyRain({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Heavy Rain",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#cfd9df"), stringToColor("#e2ebf0")],
        [0.0, 1.0],
        tileMode,
      );

  /// 14. Amy Crisp
  static Gradient amyCrisp({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Amy Crisp",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#a6c0fe"), stringToColor("#f68084")],
        [0.0, 1.0],
        tileMode,
      );

  /// 15. Mean Fruit
  static Gradient meanFruit({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Mean Fruit",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#fccb90"), stringToColor("#d57eeb")],
        [0.0, 1.0],
        tileMode,
      );

  /// 16. Deep Blue
  static Gradient deepBlue({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Deep Blue",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#e0c3fc"), stringToColor("#8ec5fc")],
        [0.0, 1.0],
        tileMode,
      );

  /// 17. Ripe Malinka
  static Gradient ripeMalinka({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Ripe Malinka",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#f093fb"), stringToColor("#f5576c")],
        [0.0, 1.0],
        tileMode,
      );

  /// 18. Cloudy Knoxville
  static Gradient cloudyKnoxville({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Cloudy Knoxville",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#fdfbfb"), stringToColor("#ebedee")],
        [0.0, 1.0],
        tileMode,
      );

  /// 19. Malibu Beach
  static Gradient malibuBeach({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Malibu Beach",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#4facfe"), stringToColor("#00f2fe")],
        [0.0, 1.0],
        tileMode,
      );

  /// 20. New Life
  static Gradient newLife({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "New Life",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#43e97b"), stringToColor("#38f9d7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 21. True Sunset
  static Gradient trueSunset({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "True Sunset",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#fa709a"), stringToColor("#fee140")],
        [0.0, 1.0],
        tileMode,
      );

  /// 22. Morpheus Den
  static Gradient morpheusDen({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Morpheus Den",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#30cfd0"), stringToColor("#330867")],
        [0.0, 1.0],
        tileMode,
      );

  /// 23. Rare Wind
  static Gradient rareWind({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Rare Wind",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#a8edea"), stringToColor("#fed6e3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 24. Near Moon
  static Gradient nearMoon({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Near Moon",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#5ee7df"), stringToColor("#b490ca")],
        [0.0, 1.0],
        tileMode,
      );

  /// 25. Wild Apple
  static Gradient wildApple({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Wild Apple",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#d299c2"), stringToColor("#fef9d7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 26. Saint Petersburg
  static Gradient saintPetersburg({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Saint Petersburg",
        center,
        startAngle,
        endAngle,
        45.0,
        [stringToColor("#f5f7fa"), stringToColor("#c3cfe2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 28. Plum Plate
  static Gradient plumPlate({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Plum Plate",
        center,
        startAngle,
        endAngle,
        45.0,
        [stringToColor("#667eea"), stringToColor("#764ba2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 29. Everlasting Sky
  static Gradient everlastingSky({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Everlasting Sky",
        center,
        startAngle,
        endAngle,
        45.0,
        [stringToColor("#fdfcfb"), stringToColor("#e2d1c3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 30. Happy Fisher
  static Gradient happyFisher({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Happy Fisher",
        center,
        startAngle,
        endAngle,
        30.0,
        [stringToColor("#89f7fe"), stringToColor("#66a6ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 31. Blessing
  static Gradient blessing({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Blessing",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#fddb92"), stringToColor("#d1fdff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 32. Sharpeye Eagle
  static Gradient sharpeyeEagle({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sharpeye Eagle",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#9890e3"), stringToColor("#b1f4cf")],
        [0.0, 1.0],
        tileMode,
      );

  /// 33. Ladoga Bottom
  static Gradient ladogaBottom({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Ladoga Bottom",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#ebc0fd"), stringToColor("#d9ded8")],
        [0.0, 1.0],
        tileMode,
      );

  /// 34. Lemon Gate
  static Gradient lemonGate({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Lemon Gate",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#96fbc4"), stringToColor("#f9f586")],
        [0.0, 1.0],
        tileMode,
      );

  /// 35. Itmeo Branding
  static Gradient itmeoBranding({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Itmeo Branding",
        center,
        startAngle,
        endAngle,
        90.0,
        [stringToColor("#2af598"), stringToColor("#009efd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 36. Zeus Miracle
  static Gradient zeusMiracle({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Zeus Miracle",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#cd9cf2"), stringToColor("#f6f3ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 37. Old Hat
  static Gradient oldHat({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Old Hat",
        center,
        startAngle,
        endAngle,
        0.0,
        [
          stringToColor("#e4afcb"),
          stringToColor("#b8cbb8"),
          stringToColor("#b8cbb8"),
          stringToColor("#e2c58b"),
          stringToColor("#c2ce9c"),
          stringToColor("#7edbdc")
        ],
        [0.0, 0.0, 0.0, 0.3, 0.64, 1.0],
        tileMode,
      );

  /// 38. Star Wine
  static Gradient starWine({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Star Wine",
        center,
        startAngle,
        endAngle,
        0.0,
        [
          stringToColor("#b8cbb8"),
          stringToColor("#b8cbb8"),
          stringToColor("#b465da"),
          stringToColor("#cf6cc9"),
          stringToColor("#ee609c"),
          stringToColor("#ee609c")
        ],
        [0.0, 0.0, 0.0, 0.33, 0.66, 1.0],
        tileMode,
      );

  /// 39. Deep Blue
  static Gradient deepBlue2({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Deep Blue",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#6a11cb"), stringToColor("#2575fc")],
        [0.0, 1.0],
        tileMode,
      );

  /// 41. Happy Acid
  static Gradient happyAcid({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Happy Acid",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#37ecba"), stringToColor("#72afd3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 42. Awesome Pine
  static Gradient awesomePine({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Awesome Pine",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#ebbba7"), stringToColor("#cfc7f8")],
        [0.0, 1.0],
        tileMode,
      );

  /// 43. New York
  static Gradient newYork({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "New York",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#fff1eb"), stringToColor("#ace0f9")],
        [0.0, 1.0],
        tileMode,
      );

  /// 44. Shy Rainbow
  static Gradient shyRainbow({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Shy Rainbow",
        center,
        startAngle,
        endAngle,
        0.0,
        [
          stringToColor("#eea2a2"),
          stringToColor("#bbc1bf"),
          stringToColor("#57c6e1"),
          stringToColor("#b49fda"),
          stringToColor("#7ac5d8")
        ],
        [0.0, 0.19, 0.42, 0.79, 1.0],
        tileMode,
      );

  /// 46. Mixed Hopes
  static Gradient mixedHopes({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Mixed Hopes",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#c471f5"), stringToColor("#fa71cd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 47. Fly High
  static Gradient flyHigh({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Fly High",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#48c6ef"), stringToColor("#6f86d6")],
        [0.0, 1.0],
        tileMode,
      );

  /// 48. Strong Bliss
  static Gradient strongBliss({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Strong Bliss",
        center,
        startAngle,
        endAngle,
        0.0,
        [
          stringToColor("#f78ca0"),
          stringToColor("#f9748f"),
          stringToColor("#fd868c"),
          stringToColor("#fe9a8b")
        ],
        [0.0, 0.19, 0.6, 1.0],
        tileMode,
      );

  /// 49. Fresh Milk
  static Gradient freshMilk({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Fresh Milk",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#feada6"), stringToColor("#f5efef")],
        [0.0, 1.0],
        tileMode,
      );

  /// 50. Snow Again
  static Gradient snowAgain({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Snow Again",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#e6e9f0"), stringToColor("#eef1f5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 51. February Ink
  static Gradient februaryInk({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "February Ink",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#accbee"), stringToColor("#e7f0fd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 52. Kind Steel
  static Gradient kindSteel({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Kind Steel",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#e9defa"), stringToColor("#fbfcdb")],
        [0.0, 1.0],
        tileMode,
      );

  /// 53. Soft Grass
  static Gradient softGrass({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Soft Grass",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#c1dfc4"), stringToColor("#deecdd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 54. Grown Early
  static Gradient grownEarly({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Grown Early",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#0ba360"), stringToColor("#3cba92")],
        [0.0, 1.0],
        tileMode,
      );

  /// 55. Sharp Blues
  static Gradient sharpBlues({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sharp Blues",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#00c6fb"), stringToColor("#005bea")],
        [0.0, 1.0],
        tileMode,
      );

  /// 56. Shady Water
  static Gradient shadyWater({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Shady Water",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#74ebd5"), stringToColor("#9face6")],
        [0.0, 1.0],
        tileMode,
      );

  /// 57. Dirty Beauty
  static Gradient dirtyBeauty({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Dirty Beauty",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#6a85b6"), stringToColor("#bac8e0")],
        [0.0, 1.0],
        tileMode,
      );

  /// 58. Great Whale
  static Gradient greatWhale({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Great Whale",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#a3bded"), stringToColor("#6991c7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 59. Teen Notebook
  static Gradient teenNotebook({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Teen Notebook",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#9795f0"), stringToColor("#fbc8d4")],
        [0.0, 1.0],
        tileMode,
      );

  /// 60. Polite Rumors
  static Gradient politeRumors({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Polite Rumors",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#a7a6cb"),
          stringToColor("#8989ba"),
          stringToColor("#8989ba")
        ],
        [0.0, 0.52, 1.0],
        tileMode,
      );

  /// 61. Sweet Period
  static Gradient sweetPeriod({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sweet Period",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#3f51b1"),
          stringToColor("#5a55ae"),
          stringToColor("#7b5fac"),
          stringToColor("#8f6aae"),
          stringToColor("#a86aa4"),
          stringToColor("#cc6b8e"),
          stringToColor("#f18271"),
          stringToColor("#f3a469"),
          stringToColor("#f7c978")
        ],
        [0.0, 0.13, 0.25, 0.38, 0.5, 0.62, 0.75, 0.87, 1.0],
        tileMode,
      );

  /// 62. Wide Matrix
  static Gradient wideMatrix({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Wide Matrix",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#fcc5e4"),
          stringToColor("#fda34b"),
          stringToColor("#ff7882"),
          stringToColor("#c8699e"),
          stringToColor("#7046aa"),
          stringToColor("#0c1db8"),
          stringToColor("#020f75")
        ],
        [0.0, 0.15, 0.35, 0.52, 0.71, 0.87, 1.0],
        tileMode,
      );

  /// 63. Soft Cherish
  static Gradient softCherish({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Soft Cherish",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#dbdcd7"),
          stringToColor("#dddcd7"),
          stringToColor("#e2c9cc"),
          stringToColor("#e7627d"),
          stringToColor("#b8235a"),
          stringToColor("#801357"),
          stringToColor("#3d1635"),
          stringToColor("#1c1a27")
        ],
        [0.0, 0.24, 0.3, 0.46, 0.59, 0.71, 0.84, 1.0],
        tileMode,
      );

  /// 64. Red Salvation
  static Gradient redSalvation({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Red Salvation",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#f43b47"), stringToColor("#453a94")],
        [0.0, 1.0],
        tileMode,
      );

  /// 65. Burning Spring
  static Gradient burningSpring({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Burning Spring",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#4fb576"),
          stringToColor("#44c489"),
          stringToColor("#28a9ae"),
          stringToColor("#28a2b7"),
          stringToColor("#4c7788"),
          stringToColor("#6c4f63"),
          stringToColor("#432c39")
        ],
        [0.0, 0.3, 0.46, 0.59, 0.71, 0.86, 1.0],
        tileMode,
      );

  /// 66. Night Party
  static Gradient nightParty({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Night Party",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#0250c5"), stringToColor("#d43f8d")],
        [0.0, 1.0],
        tileMode,
      );

  /// 67. Sky Glider
  static Gradient skyGlider({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sky Glider",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#88d3ce"), stringToColor("#6e45e2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 68. Heaven Peach
  static Gradient heavenPeach({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Heaven Peach",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#d9afd9"), stringToColor("#97d9e1")],
        [0.0, 1.0],
        tileMode,
      );

  /// 69. Purple Division
  static Gradient purpleDivision({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Purple Division",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#7028e4"), stringToColor("#e5b2ca")],
        [0.0, 1.0],
        tileMode,
      );

  /// 70. Aqua Splash
  static Gradient aquaSplash({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Aqua Splash",
        center,
        startAngle,
        endAngle,
        -75.0,
        [stringToColor("#13547a"), stringToColor("#80d0c7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 72. Spiky Naga
  static Gradient spikyNaga({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Spiky Naga",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#505285"),
          stringToColor("#585e92"),
          stringToColor("#65689f"),
          stringToColor("#7474b0"),
          stringToColor("#7e7ebb"),
          stringToColor("#8389c7"),
          stringToColor("#9795d4"),
          stringToColor("#a2a1dc"),
          stringToColor("#b5aee4")
        ],
        [0.0, 0.12, 0.25, 0.37, 0.5, 0.62, 0.75, 0.87, 1.0],
        tileMode,
      );

  /// 73. Love Kiss
  static Gradient loveKiss({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Love Kiss",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#ff0844"), stringToColor("#ffb199")],
        [0.0, 1.0],
        tileMode,
      );

  /// 75. Clean Mirror
  static Gradient cleanMirror({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Clean Mirror",
        center,
        startAngle,
        endAngle,
        -45.0,
        [stringToColor("#93a5cf"), stringToColor("#e4efe9")],
        [0.0, 1.0],
        tileMode,
      );

  /// 76. Premium Dark
  static Gradient premiumDark({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Premium Dark",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#434343"), Colors.black],
        [0.0, 1.0],
        tileMode,
      );

  /// 77. Cold Evening
  static Gradient coldEvening({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Cold Evening",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#0c3483"),
          stringToColor("#a2b6df"),
          stringToColor("#6b8cce"),
          stringToColor("#a2b6df")
        ],
        [0.0, 1.0, 1.0, 1.0],
        tileMode,
      );

  /// 78. Cochiti Lake
  static Gradient cochitiLake({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Cochiti Lake",
        center,
        startAngle,
        endAngle,
        -45.0,
        [stringToColor("#93a5cf"), stringToColor("#e4efe9")],
        [0.0, 1.0],
        tileMode,
      );

  /// 79. Summer Games
  static Gradient summerGames({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Summer Games",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#92fe9d"), stringToColor("#00c9ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 80. Passionate Bed
  static Gradient passionateBed({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Passionate Bed",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#ff758c"), stringToColor("#ff7eb3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 81. Mountain Rock
  static Gradient mountainRock({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Mountain Rock",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#868f96"), stringToColor("#596164")],
        [0.0, 1.0],
        tileMode,
      );

  /// 82. Desert Hump
  static Gradient desertHump({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Desert Hump",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#c79081"), stringToColor("#dfa579")],
        [0.0, 1.0],
        tileMode,
      );

  /// 83. Jungle Day
  static Gradient jungleDay({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Jungle Day",
        center,
        startAngle,
        endAngle,
        -45.0,
        [stringToColor("#8baaaa"), stringToColor("#ae8b9c")],
        [0.0, 1.0],
        tileMode,
      );

  /// 84. Phoenix Start
  static Gradient phoenixStart({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Phoenix Start",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#f83600"), stringToColor("#f9d423")],
        [0.0, 1.0],
        tileMode,
      );

  /// 85. October Silence
  static Gradient octoberSilence({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "October Silence",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#b721ff"), stringToColor("#21d4fd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 86. Faraway River
  static Gradient farawayRiver({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Faraway River",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#6e45e2"), stringToColor("#88d3ce")],
        [0.0, 1.0],
        tileMode,
      );

  /// 87. Alchemist Lab
  static Gradient alchemistLab({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Alchemist Lab",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#d558c8"), stringToColor("#24d292")],
        [0.0, 1.0],
        tileMode,
      );

  /// 88. Over Sun
  static Gradient overSun({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Over Sun",
        center,
        startAngle,
        endAngle,
        -30.0,
        [stringToColor("#abecd6"), stringToColor("#fbed96")],
        [0.0, 1.0],
        tileMode,
      );

  /// 89. Premium White
  static Gradient premiumWhite({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Premium White",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#d5d4d0"),
          stringToColor("#d5d4d0"),
          stringToColor("#eeeeec"),
          stringToColor("#efeeec"),
          stringToColor("#e9e9e7")
        ],
        [0.0, 0.01, 0.31, 0.75, 1.0],
        tileMode,
      );

  /// 90. Mars Party
  static Gradient marsParty({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Mars Party",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#5f72bd"), stringToColor("#9b23ea")],
        [0.0, 1.0],
        tileMode,
      );

  /// 91. Eternal Constance
  static Gradient eternalConstance({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Eternal Constance",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#09203f"), stringToColor("#537895")],
        [0.0, 1.0],
        tileMode,
      );

  /// 92. Japan Blush
  static Gradient japanBlush({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Japan Blush",
        center,
        startAngle,
        endAngle,
        -110.0,
        [
          stringToColor("#ddd6f3"),
          stringToColor("#faaca8"),
          stringToColor("#faaca8")
        ],
        [0.0, 1.0, 1.0],
        tileMode,
      );

  /// 93. Smiling Rain
  static Gradient smilingRain({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Smiling Rain",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#dcb0ed"), stringToColor("#99c99c")],
        [0.0, 1.0],
        tileMode,
      );

  /// 94. Cloudy Apple
  static Gradient cloudyApple({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Cloudy Apple",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#f3e7e9"),
          stringToColor("#e3eeff"),
          stringToColor("#e3eeff")
        ],
        [0.0, 0.99, 1.0],
        tileMode,
      );

  /// 95. Big Mango
  static Gradient bigMango({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Big Mango",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#c71d6f"), stringToColor("#d09693")],
        [0.0, 1.0],
        tileMode,
      );

  /// 96. Healthy Water
  static Gradient healthyWater({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Healthy Water",
        center,
        startAngle,
        endAngle,
        -30.0,
        [stringToColor("#96deda"), stringToColor("#50c9c3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 97. Amour Amour
  static Gradient amourAmour({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Amour Amour",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#f77062"), stringToColor("#fe5196")],
        [0.0, 1.0],
        tileMode,
      );

  /// 98. Risky Concrete
  static Gradient riskyConcrete({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Risky Concrete",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#c4c5c7"),
          stringToColor("#dcdddf"),
          stringToColor("#ebebeb")
        ],
        [0.0, 0.52, 1.0],
        tileMode,
      );

  /// 99. Strong Stick
  static Gradient strongStick({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Strong Stick",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#a8caba"), stringToColor("#5d4157")],
        [0.0, 1.0],
        tileMode,
      );

  /// 100. Vicious Stance
  static Gradient viciousStance({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Vicious Stance",
        center,
        startAngle,
        endAngle,
        -30.0,
        [stringToColor("#29323c"), stringToColor("#485563")],
        [0.0, 1.0],
        tileMode,
      );

  /// 101. Palo Alto
  static Gradient paloAlto({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Palo Alto",
        center,
        startAngle,
        endAngle,
        -150.0,
        [stringToColor("#16a085"), stringToColor("#f4d03f")],
        [0.0, 1.0],
        tileMode,
      );

  /// 102. Happy Memories
  static Gradient happyMemories({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Happy Memories",
        center,
        startAngle,
        endAngle,
        -150.0,
        [stringToColor("#ff5858"), stringToColor("#f09819")],
        [0.0, 1.0],
        tileMode,
      );

  /// 103. Midnight Bloom
  static Gradient midnightBloom({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Midnight Bloom",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#2b5876"), stringToColor("#4e4376")],
        [0.0, 1.0],
        tileMode,
      );

  /// 104. Crystalline
  static Gradient crystalline({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Crystalline",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#00cdac"), stringToColor("#8ddad5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 106. Party Bliss
  static Gradient partyBliss({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Party Bliss",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#4481eb"), stringToColor("#04befe")],
        [0.0, 1.0],
        tileMode,
      );

  /// 107. Confident Cloud
  static Gradient confidentCloud({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Confident Cloud",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#dad4ec"),
          stringToColor("#dad4ec"),
          stringToColor("#f3e7e9")
        ],
        [0.0, 0.01, 1.0],
        tileMode,
      );

  /// 108. Le Cocktail
  static Gradient leCocktail({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Le Cocktail",
        center,
        startAngle,
        endAngle,
        -45.0,
        [stringToColor("#874da2"), stringToColor("#c43a30")],
        [0.0, 1.0],
        tileMode,
      );

  /// 109. River City
  static Gradient riverCity({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "River City",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#4481eb"), stringToColor("#04befe")],
        [0.0, 1.0],
        tileMode,
      );

  /// 110. Frozen Berry
  static Gradient frozenBerry({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Frozen Berry",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#e8198b"), stringToColor("#c7eafd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 112. Child Care
  static Gradient childCare({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Child Care",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#f794a4"), stringToColor("#fdd6bd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 113. Flying Lemon
  static Gradient flyingLemon({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Flying Lemon",
        center,
        startAngle,
        endAngle,
        -30.0,
        [stringToColor("#64b3f4"), stringToColor("#c2e59c")],
        [0.0, 1.0],
        tileMode,
      );

  /// 114. New Retrowave
  static Gradient newRetrowave({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "New Retrowave",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#3b41c5"),
          stringToColor("#a981bb"),
          stringToColor("#ffc8a9")
        ],
        [0.0, 0.49, 1.0],
        tileMode,
      );

  /// 115. Hidden Jaguar
  static Gradient hiddenJaguar({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Hidden Jaguar",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#0fd850"), stringToColor("#f9f047")],
        [0.0, 1.0],
        tileMode,
      );

  /// 116. Above The Sky
  static Gradient aboveTheSky({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Above The Sky",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          Colors.grey[300]!,
          Colors.grey[300]!,
          stringToColor("#e0e0e0"),
          stringToColor("#efefef"),
          stringToColor("#d9d9d9"),
          stringToColor("#bcbcbc")
        ],
        [0.0, 0.01, 0.26, 0.48, 0.75, 1.0],
        tileMode,
      );

  /// 117. Nega
  static Gradient nega({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Nega",
        center,
        startAngle,
        endAngle,
        -45.0,
        [stringToColor("#ee9ca7"), stringToColor("#ffdde1")],
        [0.0, 1.0],
        tileMode,
      );

  /// 118. Dense Water
  static Gradient denseWater({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Dense Water",
        center,
        startAngle,
        endAngle,
        0.0,
        [
          stringToColor("#3ab5b0"),
          stringToColor("#3d99be"),
          stringToColor("#56317a")
        ],
        [0.0, 0.31, 1.0],
        tileMode,
      );

  /// 120. Seashore
  static Gradient seashore({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Seashore",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#209cff"), stringToColor("#68e0cf")],
        [0.0, 1.0],
        tileMode,
      );

  /// 121. Marble Wall
  static Gradient marbleWall({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Marble Wall",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#bdc2e8"),
          stringToColor("#bdc2e8"),
          stringToColor("#e6dee9")
        ],
        [0.0, 0.01, 1.0],
        tileMode,
      );

  /// 122. Cheerful Caramel
  static Gradient cheerfulCaramel({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Cheerful Caramel",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#e6b980"), stringToColor("#eacda3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 123. Night Sky
  static Gradient nightSky({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Night Sky",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#1e3c72"),
          stringToColor("#1e3c72"),
          stringToColor("#2a5298")
        ],
        [0.0, 0.01, 1.0],
        tileMode,
      );

  /// 124. Magic Lake
  static Gradient magicLake({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Magic Lake",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#d5dee7"),
          stringToColor("#ffafbd"),
          stringToColor("#c9ffbf")
        ],
        [0.0, 0.0, 1.0],
        tileMode,
      );

  /// 125. Young Grass
  static Gradient youngGrass({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Young Grass",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#9be15d"), stringToColor("#00e3ae")],
        [0.0, 1.0],
        tileMode,
      );

  /// 126. Colorful Peach
  static Gradient colorfulPeach({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Colorful Peach",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#ed6ea0"), stringToColor("#ec8c69")],
        [0.0, 1.0],
        tileMode,
      );

  /// 127. Gentle Care
  static Gradient gentleCare({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Gentle Care",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#ffc3a0"), stringToColor("#ffafbd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 128. Plum Bath
  static Gradient plumBath({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Plum Bath",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#cc208e"), stringToColor("#6713d2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 129. Happy Unicorn
  static Gradient happyUnicorn({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Happy Unicorn",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#b3ffab"), stringToColor("#12fff7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 131. African Field
  static Gradient africanField({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "African Field",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          stringToColor("#65bd60"),
          stringToColor("#5ac1a8"),
          stringToColor("#3ec6ed"),
          stringToColor("#b7ddb7"),
          stringToColor("#fef381")
        ],
        [0.0, 0.25, 0.5, 0.75, 1.0],
        tileMode,
      );

  /// 132. Solid Stone
  static Gradient solidStone({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Solid Stone",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#243949"), stringToColor("#517fa4")],
        [0.0, 1.0],
        tileMode,
      );

  /// 133. Orange Juice
  static Gradient orangeJuice({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Orange Juice",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#fc6076"), stringToColor("#ff9a44")],
        [0.0, 1.0],
        tileMode,
      );

  /// 134. Glass Water
  static Gradient glassWater({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Glass Water",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#dfe9f3"), Colors.white],
        [0.0, 1.0],
        tileMode,
      );

  /// 136. North Miracle
  static Gradient northMiracle({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "North Miracle",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#00dbde"), stringToColor("#fc00ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 137. Fruit Blend
  static Gradient fruitBlend({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Fruit Blend",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#f9d423"), stringToColor("#ff4e50")],
        [0.0, 1.0],
        tileMode,
      );

  /// 138. Millennium Pine
  static Gradient millenniumPine({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Millennium Pine",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#50cc7f"), stringToColor("#f5d100")],
        [0.0, 1.0],
        tileMode,
      );

  /// 139. High Flight
  static Gradient highFlight({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "High Flight",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#0acffe"), stringToColor("#495aff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 140. Mole Hall
  static Gradient moleHall({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Mole Hall",
        center,
        startAngle,
        endAngle,
        -110.0,
        [stringToColor("#616161"), stringToColor("#9bc5c3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 142. Space Shift
  static Gradient spaceShift({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Space Shift",
        center,
        startAngle,
        endAngle,
        -30.0,
        [
          stringToColor("#3d3393"),
          stringToColor("#2b76b9"),
          stringToColor("#2cacd1"),
          stringToColor("#35eb93")
        ],
        [0.0, 0.37, 0.65, 1.0],
        tileMode,
      );

  /// 143. Forest Inei
  static Gradient forestInei({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Forest Inei",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#df89b5"), stringToColor("#bfd9fe")],
        [0.0, 1.0],
        tileMode,
      );

  /// 144. Royal Garden
  static Gradient royalGarden({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Royal Garden",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#ed6ea0"), stringToColor("#ec8c69")],
        [0.0, 1.0],
        tileMode,
      );

  /// 145. Rich Metal
  static Gradient richMetal({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Rich Metal",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#d7d2cc"), stringToColor("#304352")],
        [0.0, 1.0],
        tileMode,
      );

  /// 146. Juicy Cake
  static Gradient juicyCake({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Juicy Cake",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#e14fad"), stringToColor("#f9d423")],
        [0.0, 1.0],
        tileMode,
      );

  /// 147. Smart Indigo
  static Gradient smartIndigo({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Smart Indigo",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#b224ef"), stringToColor("#7579ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 148. Sand Strike
  static Gradient sandStrike({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sand Strike",
        center,
        startAngle,
        endAngle,
        0.0,
        [
          stringToColor("#c1c161"),
          stringToColor("#c1c161"),
          stringToColor("#d4d4b1")
        ],
        [0.0, 0.0, 1.0],
        tileMode,
      );

  /// 149. Norse Beauty
  static Gradient norseBeauty({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Norse Beauty",
        center,
        startAngle,
        endAngle,
        0.0,
        [stringToColor("#ec77ab"), stringToColor("#7873f5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 150. Aqua Guidance
  static Gradient aquaGuidance({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Aqua Guidance",
        center,
        startAngle,
        endAngle,
        -90.0,
        [stringToColor("#007adf"), stringToColor("#00ecbc")],
        [0.0, 1.0],
        tileMode,
      );

  /// 151. Sun Veggie
  static Gradient sunVeggie({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sun Veggie",
        center,
        startAngle,
        endAngle,
        -315.0,
        [stringToColor("#20E2D7"), stringToColor("#F9FEA5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 152. Sea Lord
  static Gradient seaLord({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sea Lord",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#2CD8D5"),
          stringToColor("#C5C1FF"),
          stringToColor("#FFBAC3")
        ],
        [0.0, 0.56, 1.0],
        tileMode,
      );

  /// 153. Black Sea
  static Gradient blackSea({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Black Sea",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#2CD8D5"),
          stringToColor("#6B8DD6"),
          stringToColor("#8E37D7")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 154. Grass Shampoo
  static Gradient grassShampoo({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Grass Shampoo",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#DFFFCD"),
          stringToColor("#90F9C4"),
          stringToColor("#39F3BB")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 155. Landing Aircraft
  static Gradient landingAircraft({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Landing Aircraft",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#5D9FFF"),
          stringToColor("#B8DCFF"),
          stringToColor("#6BBBFF")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 156. Witch Dance
  static Gradient witchDance({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Witch Dance",
        center,
        startAngle,
        endAngle,
        -315.0,
        [stringToColor("#A8BFFF"), stringToColor("#884D80")],
        [0.0, 1.0],
        tileMode,
      );

  /// 157. Sleepless Night
  static Gradient sleeplessNight({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sleepless Night",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#5271C4"),
          stringToColor("#B19FFF"),
          stringToColor("#ECA1FE")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 158. Angel Care
  static Gradient angelCare({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Angel Care",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#FFE29F"),
          stringToColor("#FFA99F"),
          stringToColor("#FF719A")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 159. Crystal River
  static Gradient crystalRiver({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Crystal River",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#22E1FF"),
          stringToColor("#1D8FE1"),
          stringToColor("#625EB1")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 160. Soft Lipstick
  static Gradient softLipstick({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Soft Lipstick",
        center,
        startAngle,
        endAngle,
        -315.0,
        [stringToColor("#B6CEE8"), stringToColor("#F578DC")],
        [0.0, 1.0],
        tileMode,
      );

  /// 161. Salt Mountain
  static Gradient saltMountain({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Salt Mountain",
        center,
        startAngle,
        endAngle,
        -315.0,
        [stringToColor("#FFFEFF"), stringToColor("#D7FFFE")],
        [0.0, 1.0],
        tileMode,
      );

  /// 162. Perfect White
  static Gradient perfectWhite({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Perfect White",
        center,
        startAngle,
        endAngle,
        -315.0,
        [stringToColor("#E3FDF5"), stringToColor("#FFE6FA")],
        [0.0, 1.0],
        tileMode,
      );

  /// 163. Fresh Oasis
  static Gradient freshOasis({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Fresh Oasis",
        center,
        startAngle,
        endAngle,
        -315.0,
        [stringToColor("#7DE2FC"), stringToColor("#B9B6E5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 164. Strict November
  static Gradient strictNovember({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Strict November",
        center,
        startAngle,
        endAngle,
        -315.0,
        [stringToColor("#CBBACC"), stringToColor("#2580B3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 165. Morning Salad
  static Gradient morningSalad({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Morning Salad",
        center,
        startAngle,
        endAngle,
        -315.0,
        [stringToColor("#B7F8DB"), stringToColor("#50A7C2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 166. Deep Relief
  static Gradient deepRelief({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Deep Relief",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#7085B6"),
          stringToColor("#87A7D9"),
          stringToColor("#DEF3F8")
        ],
        [0.0, 0.5, 1.0],
        tileMode,
      );

  /// 167. Sea Strike
  static Gradient seaStrike({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sea Strike",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#77FFD2"),
          stringToColor("#6297DB"),
          stringToColor("#1EECFF")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 168. Night Call
  static Gradient nightCall({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Night Call",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#AC32E4"),
          stringToColor("#7918F2"),
          stringToColor("#4801FF")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 169. Supreme Sky
  static Gradient supremeSky({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Supreme Sky",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#D4FFEC"),
          stringToColor("#57F2CC"),
          stringToColor("#4596FB")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 170. Light Blue
  static Gradient lightBlue({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Light Blue",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#9EFBD3"),
          stringToColor("#57E9F2"),
          stringToColor("#45D4FB")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 171. Mind Crawl
  static Gradient mindCrawl({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Mind Crawl",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#473B7B"),
          stringToColor("#3584A7"),
          stringToColor("#30D2BE")
        ],
        [0.0, 0.51, 1.0],
        tileMode,
      );

  /// 172. Lily Meadow
  static Gradient lilyMeadow({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Lily Meadow",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#65379B"),
          stringToColor("#886AEA"),
          stringToColor("#6457C6")
        ],
        [0.0, 0.53, 1.0],
        tileMode,
      );

  /// 173. Sugar Lollipop
  static Gradient sugarLollipop({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sugar Lollipop",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#A445B2"),
          stringToColor("#D41872"),
          stringToColor("#FF0066")
        ],
        [0.0, 0.52, 1.0],
        tileMode,
      );

  /// 174. Sweet Dessert
  static Gradient sweetDessert({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Sweet Dessert",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#7742B2"),
          stringToColor("#F180FF"),
          stringToColor("#FD8BD9")
        ],
        [0.0, 0.52, 1.0],
        tileMode,
      );

  /// 175. Magic Ray
  static Gradient magicRay({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Magic Ray",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#FF3CAC"),
          stringToColor("#562B7C"),
          stringToColor("#2B86C5")
        ],
        [0.0, 0.52, 1.0],
        tileMode,
      );

  /// 176. Teen Party
  static Gradient teenParty({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Teen Party",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#FF057C"),
          stringToColor("#8D0B93"),
          stringToColor("#321575")
        ],
        [0.0, 0.5, 1.0],
        tileMode,
      );

  /// 177. Frozen Heat
  static Gradient frozenHeat({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Frozen Heat",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#FF057C"),
          stringToColor("#7C64D5"),
          stringToColor("#4CC3FF")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 178. Gagarin View
  static Gradient gagarinView({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Gagarin View",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#69EACB"),
          stringToColor("#EACCF8"),
          stringToColor("#6654F1")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );

  /// 179. Fabled Sunset
  static Gradient fabledSunset({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Fabled Sunset",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#231557"),
          stringToColor("#44107A"),
          stringToColor("#FF1361"),
          stringToColor("#FFF800")
        ],
        [0.0, 0.29, 0.67, 1.0],
        tileMode,
      );

  /// 180. Perfect Blue
  static Gradient perfectBlue({
    AlignmentGeometry center = Alignment.center,
    double startAngle = 0.0,
    double endAngle = math.pi * 2,
    TileMode tileMode = TileMode.clamp,
  }) =>
      sweep(
        "Perfect Blue",
        center,
        startAngle,
        endAngle,
        -315.0,
        [
          stringToColor("#3D4E81"),
          stringToColor("#5753C9"),
          stringToColor("#6E7FF3")
        ],
        [0.0, 0.48, 1.0],
        tileMode,
      );
}
