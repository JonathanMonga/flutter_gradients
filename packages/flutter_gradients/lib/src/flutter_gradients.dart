import 'package:flutter/widgets.dart';

import 'package:flutter_gradients/src/core/flutter_linear_gradients.dart';
import 'package:flutter_gradients/src/core/flutter_radial_gradients.dart';
import 'package:flutter_gradients/src/core/flutter_sweep_gradients.dart';
import 'package:flutter_gradients/src/core/gradient_type.dart';

import 'dart:math' as math;

/// A 2D Gradient generator.
///
/// By default this class it will contains methods that will produce a `LinearGradient`.
/// If you want to get a `RadialGradient` set the `type` parameter to `GradientType.radial`, and
/// to `GradientType.sweep` for `SweepGradient`.
///
/// * For `LinearGradient` use this code :
/// ```
/// Container(
///   width: 150,
///   height: 150,
///   decoration: BoxDecoration(
///     shape: BoxShape.circle,
///     gradient: FlutterGradient.warmFlame(),
///   ),
/// ),
/// ```
/// * For `SweepGradient` use this code :
///
/// ```
/// Container(
///   width: 150,
///   height: 150,
///   decoration: BoxDecoration(
///     shape: BoxShape.circle,
///     gradient: FlutterGradient.warmFlame(type: GradientType.sweep),
///   ),
/// ),
/// ```
///
/// You can customize more yet :
///
/// ```
/// Container(
///   width: 150,
///   height: 150,
///   decoration: BoxDecoration(
///     shape: BoxShape.circle,
///     gradient: FlutterGradient.warmFlame(
///            type: GradientType.sweep,
///            AlignmentGeometry center = Alignment.center,
///            startAngle = 0.0,
///            endAngle = math.pi * 2,
///     ),
///   ),
/// ),
/// ```
///
/// Where [startAngle] and [endAngle] are all double.
///
/// * For `RadialGradient` use this code :
///
/// ```
/// Container(
///   width: 150,
///   height: 150,
///   decoration: BoxDecoration(
///     shape: BoxShape.circle,
///     gradient: FlutterGradient.warmFlame(type: GradientType.radial),
///   ),
/// ),
/// ```
/// You can customize more yet the `RadialGradient`:
///
/// ```
/// Container(
///   width: 150,
///   height: 150,
///   decoration: BoxDecoration(
///     shape: BoxShape.circle,
///     gradient: FlutterGradient.warmFlame(
///            type: GradientType.radial,
///            AlignmentGeometry center = Alignment.center,
///            radius = 0.5,
///     ),
///   ),
/// ),
/// ```
/// Where [radius] are double.
///
/// You can set also the `tileMode`, that by default is set on `TileMode.repeated`
///
/// ```
/// FlutterGradient.warmFlame(tileMode = TileMode.clamp),
/// ```
///
class FlutterGradients {
  /// Warm Flame
  static Gradient warmFlame(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.warmFlame(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.warmFlame(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.warmFlame(tileMode: tileMode);
  }

  /// Night Fade
  static Gradient nightFade(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.nightFade(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.nightFade(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.nightFade(tileMode: tileMode);
  }

  /// Spring Warmth
  static Gradient springWarmth(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.springWarmth(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.springWarmth(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.springWarmth(tileMode: tileMode);
  }

  /// Juicy Peach
  static Gradient juicyPeach(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.juicyPeach(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.juicyPeach(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.juicyPeach(tileMode: tileMode);
  }

  /// Young Passion
  static Gradient youngPassion(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.youngPassion(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.youngPassion(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.youngPassion(tileMode: tileMode);
  }

  /// Lady Lips
  static Gradient ladyLips(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.ladyLips(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.ladyLips(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.ladyLips(tileMode: tileMode);
  }

  /// Sunny Morning
  static Gradient sunnyMorning(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.sunnyMorning(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.sunnyMorning(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.sunnyMorning(tileMode: tileMode);
  }

  /// Rainy Ashville
  static Gradient rainyAshville(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.rainyAshville(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.rainyAshville(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.rainyAshville(tileMode: tileMode);
  }

  /// Frozen Dreams
  static Gradient frozenDreams(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.frozenDreams(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.frozenDreams(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.frozenDreams(tileMode: tileMode);
  }

  /// Winter Neva
  static Gradient winterNeva(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.winterNeva(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.winterNeva(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.winterNeva(tileMode: tileMode);
  }

  /// Dusty Grass
  static Gradient dustyGrass(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.dustyGrass(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.dustyGrass(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.dustyGrass(tileMode: tileMode);
  }

  /// Tempting Azure
  static Gradient temptingAzure(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.temptingAzure(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.temptingAzure(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.temptingAzure(tileMode: tileMode);
  }

  /// Heavy Rain
  static Gradient heavyRain(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.heavyRain(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.heavyRain(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.heavyRain(tileMode: tileMode);
  }

  /// Amy Crisp
  static Gradient amyCrisp(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.amyCrisp(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.amyCrisp(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.amyCrisp(tileMode: tileMode);
  }

  /// Mean Fruit
  static Gradient meanFruit(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.meanFruit(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.meanFruit(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.meanFruit(tileMode: tileMode);
  }

  /// Deep Blue
  static Gradient deepBlue(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.deepBlue(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.deepBlue(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.deepBlue(tileMode: tileMode);
  }

  /// Ripe Malinka
  static Gradient ripeMalinka(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.ripeMalinka(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.ripeMalinka(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.ripeMalinka(tileMode: tileMode);
  }

  /// Cloudy Knoxville
  static Gradient cloudyKnoxville(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.cloudyKnoxville(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.cloudyKnoxville(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.cloudyKnoxville(tileMode: tileMode);
  }

  /// Malibu Beach
  static Gradient malibuBeach(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.malibuBeach(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.malibuBeach(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.malibuBeach(tileMode: tileMode);
  }

  /// New Life
  static Gradient newLife(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.newLife(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.newLife(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.newLife(tileMode: tileMode);
  }

  /// True Sunset
  static Gradient trueSunset(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.trueSunset(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.trueSunset(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.trueSunset(tileMode: tileMode);
  }

  /// Morpheus Den
  static Gradient morpheusDen(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.morpheusDen(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.morpheusDen(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.morpheusDen(tileMode: tileMode);
  }

  /// Rare Wind
  static Gradient rareWind(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.rareWind(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.rareWind(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.rareWind(tileMode: tileMode);
  }

  /// Near Moon
  static Gradient nearMoon(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.nearMoon(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.nearMoon(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.nearMoon(tileMode: tileMode);
  }

  /// Wild Apple
  static Gradient wildApple(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.wildApple(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.wildApple(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.wildApple(tileMode: tileMode);
  }

  /// Saint Petersburg
  static Gradient saintPetersburg(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.saintPetersburg(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.saintPetersburg(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.saintPetersburg(tileMode: tileMode);
  }

  /// Plum Plate
  static Gradient plumPlate(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.plumBath(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.plumBath(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.plumBath(tileMode: tileMode);
  }

  /// Everlasting Sky
  static Gradient everlastingSky(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.everlastingSky(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.everlastingSky(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.everlastingSky(tileMode: tileMode);
  }

  /// Happy Fisher
  static Gradient happyFisher(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.happyFisher(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.happyFisher(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.happyFisher(tileMode: tileMode);
  }

  /// Blessing
  static Gradient blessing(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.blessing(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.blessing(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.blessing(tileMode: tileMode);
  }

  /// Sharpeye Eagle
  static Gradient sharpeyeEagle(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.sharpeyeEagle(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.sharpeyeEagle(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.sharpeyeEagle(tileMode: tileMode);
  }

  /// Ladoga Bottom
  static Gradient ladogaBottom(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.ladogaBottom(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.ladogaBottom(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.ladogaBottom(tileMode: tileMode);
  }

  /// Lemon Gate
  static Gradient lemonGate(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.lemonGate(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.lemonGate(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.lemonGate(tileMode: tileMode);
  }

  /// Itmeo Branding
  static Gradient itmeoBranding(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.itmeoBranding(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.itmeoBranding(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.itmeoBranding(tileMode: tileMode);
  }

  /// Zeus Miracle
  static Gradient zeusMiracle(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.zeusMiracle(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.zeusMiracle(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.zeusMiracle(tileMode: tileMode);
  }

  /// Old Hat
  static Gradient oldHat(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.oldHat(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.oldHat(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.oldHat(tileMode: tileMode);
  }

  /// Star Wine
  static Gradient starWine(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.starWine(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.starWine(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.starWine(tileMode: tileMode);
  }

  /// Deep Blue
  static Gradient deepBlue2(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.deepBlue2(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.deepBlue2(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.deepBlue2(tileMode: tileMode);
  }

  /// Happy Acid
  static Gradient happyAcid(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.happyAcid(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.happyAcid(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.happyAcid(tileMode: tileMode);
  }

  /// Awesome Pine
  static Gradient awesomePine(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.awesomePine(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.awesomePine(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.awesomePine(tileMode: tileMode);
  }

  /// New York
  static Gradient newYork(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.newYork(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.newYork(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.newYork(tileMode: tileMode);
  }

  /// Shy Rainbow
  static Gradient shyRainbow(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.shyRainbow(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.shyRainbow(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.shyRainbow(tileMode: tileMode);
  }

  /// Mixed Hopes
  static Gradient mixedHopes(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.mixedHopes(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.mixedHopes(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.mixedHopes(tileMode: tileMode);
  }

  /// Fly High
  static Gradient flyHigh(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.flyHigh(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.flyHigh(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.flyHigh(tileMode: tileMode);
  }

  /// Strong Bliss
  static Gradient strongBliss(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.strongBliss(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.strongBliss(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.strongBliss(tileMode: tileMode);
  }

  /// Fresh Milk
  static Gradient freshMilk(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.freshMilk(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.freshMilk(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.freshMilk(tileMode: tileMode);
  }

  /// Snow Again
  static Gradient snowAgain(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.snowAgain(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.snowAgain(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.snowAgain(tileMode: tileMode);
  }

  /// February Ink
  static Gradient februaryInk(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.februaryInk(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.februaryInk(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.februaryInk(tileMode: tileMode);
  }

  /// Kind Steel
  static Gradient kindSteel(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.kindSteel(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.kindSteel(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.kindSteel(tileMode: tileMode);
  }

  /// Soft Grass
  static Gradient softGrass(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.softGrass(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.softGrass(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.softGrass(tileMode: tileMode);
  }

  /// Grown Early
  static Gradient grownEarly(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.grownEarly(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.grownEarly(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.grownEarly(tileMode: tileMode);
  }

  /// Sharp Blues
  static Gradient sharpBlues(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.sharpBlues(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.sharpBlues(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.sharpBlues(tileMode: tileMode);
  }

  /// Shady Water
  static Gradient shadyWater(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.shadyWater(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.shadyWater(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.shadyWater(tileMode: tileMode);
  }

  /// Dirty Beauty
  static Gradient dirtyBeauty(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.dirtyBeauty(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.dirtyBeauty(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.dirtyBeauty(tileMode: tileMode);
  }

  /// Great Whale
  static Gradient greatWhale(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.greatWhale(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.greatWhale(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.greatWhale(tileMode: tileMode);
  }

  /// Teen Notebook
  static Gradient teenNotebook(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.teenNotebook(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.teenNotebook(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.teenNotebook(tileMode: tileMode);
  }

  /// Polite Rumors
  static Gradient politeRumors(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.politeRumors(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.politeRumors(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.politeRumors(tileMode: tileMode);
  }

  /// 61. Sweet Period
  static Gradient sweetPeriod({
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
    AlignmentGeometry center,
    double startAngle,
    double endAngle,
    TileMode tileMode,
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
  static Gradient paloAlto(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient happyMemories(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient midnightBloom(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient crystalline(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient partyBliss(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient confidentCloud(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient leCocktail(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient riverCity(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient frozenBerry(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient childCare(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient flyingLemon(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient newRetrowave(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient hiddenJaguar(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient aboveTheSky(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
      sweep(
        "Above The Sky",
        center,
        startAngle,
        endAngle,
        -90.0,
        [
          Colors.grey[300],
          Colors.grey[300],
          stringToColor("#e0e0e0"),
          stringToColor("#efefef"),
          stringToColor("#d9d9d9"),
          stringToColor("#bcbcbc")
        ],
        [0.0, 0.01, 0.26, 0.48, 0.75, 1.0],
        tileMode,
      );

  /// 117. Nega
  static Gradient nega(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient denseWater(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient seashore(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient marbleWall(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient cheerfulCaramel(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient nightSky(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient magicLake(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient youngGrass(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient colorfulPeach(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient gentleCare(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient plumBath(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient happyUnicorn(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient africanField(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient solidStone(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient orangeJuice(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient glassWater(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient northMiracle(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient fruitBlend(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient millenniumPine(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient highFlight(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient moleHall(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient spaceShift(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient forestInei(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient royalGarden(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient richMetal(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient juicyCake(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient smartIndigo(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient sandStrike(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient norseBeauty(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient aquaGuidance(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient sunVeggie(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient seaLord(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient blackSea(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient grassShampoo(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient landingAircraft(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient witchDance(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient sleeplessNight(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient angelCare(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient crystalRiver(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient softLipstick(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient saltMountain(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient perfectWhite(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient freshOasis(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient strictNovember(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient morningSalad(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient deepRelief(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient seaStrike(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient nightCall(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient supremeSky(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient lightBlue(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient mindCrawl(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient lilyMeadow(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient sugarLollipop(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient sweetDessert(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient magicRay(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient teenParty(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient frozenHeat(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient gagarinView(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient fabledSunset(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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
  static Gradient perfectBlue(
          {AlignmentGeometry center,
          double startAngle,
          double endAngle,
          TileMode tileMode}) =>
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

  static List<String> names() => [
        "Warm Flame",
        "Night Fade",
        "Spring Warmth",
        "Juicy Peach",
        "Young Passion",
        "Lady Lips",
        "Sunny Morning",
        "Rainy Ashville",
        "Frozen Dreams",
        "Winter Neva",
        "Dusty Grass",
        "Tempting Azure",
        "Heavy Rain",
        "Amy Crisp",
        "Mean Fruit",
        "Deep Blue",
        "Ripe Malinka",
        "Cloudy Knoxville",
        "Malibu Beach",
        "New Life",
        "True Sunset",
        "Morpheus Den",
        "Rare Wind",
        "Near Moon",
        "Wild Apple",
        "Saint Petersburg",
        "Plum Plate",
        "Everlasting Sky",
        "Happy Fisher",
        "Blessing",
        "Sharpeye Eagle",
        "Ladoga Bottom",
        "Lemon Gate",
        "Itmeo Branding",
        "Zeus Miracle",
        "Old Hat",
        "Star Wine",
        "Happy Acid",
        "Awesome Pine",
        "New York",
        "Shy Rainbow",
        "Mixed Hopes",
        "Fly High",
        "Strong Bliss",
        "Fresh Milk",
        "Snow Again",
        "February Ink",
        "Kind Steel",
        "Soft Grass",
        "Grown Early",
        "Sharp Blues",
        "Shady Water",
        "Dirty Beauty",
        "Great Whale",
        "Teen Notebook",
        "Polite Rumors",
        "Sweet Period",
        "Wide Matrix",
        "Soft Cherish",
        "Red Salvation",
        "Burning Spring",
        "Night Party",
        "Sky Glider",
        "Heaven Peach",
        "Purple Division",
        "Aqua Splash",
        "Spiky Naga",
        "Love Kiss",
        "Clean Mirror",
        "Premium Dark",
        "Cold Evening",
        "Cochiti Lake",
        "Summer Games",
        "Passionate Bed",
        "Mountain Rock",
        "Desert Hump",
        "Jungle Day",
        "Phoenix Start",
        "October Silence",
        "Faraway River",
        "Alchemist Lab",
        "Over Sun",
        "Premium White",
        "Mars Party",
        "Eternal Constance",
        "Japan Blush",
        "Smiling Rain",
        "Cloudy Apple",
        "Big Mango",
        "Healthy Water",
        "Amour Amour",
        "Risky Concrete",
        "Strong Stick",
        "Vicious Stance",
        "Palo Alto",
        "Happy Memories",
        "Midnight Bloom",
        "Crystalline",
        "Party Bliss",
        "Confident Cloud",
        "Le Cocktail",
        "River City",
        "Frozen Berry",
        "Child Care",
        "Flying Lemon",
        "New Retrowave",
        "Hidden Jaguar",
        "Above The Sky",
        "Nega",
        "Dense Water",
        "Seashore",
        "Marble Wall",
        "Cheerful Caramel",
        "Night Sky",
        "Magic Lake",
        "Young Grass",
        "Colorful Peach",
        "Gentle Care",
        "Plum Bath",
        "Happy Unicorn",
        "African Field",
        "Solid Stone",
        "Orange Juice",
        "Glass Water",
        "North Miracle",
        "Fruit Blend",
        "Millennium Pine",
        "High Flight",
        "Mole Hall",
        "Space Shift",
        "Forest Inei",
        "Royal Garden",
        "Rich Metal",
        "Juicy Cake",
        "Smart Indigo",
        "Sand Strike",
        "Norse Beauty",
        "Aqua Guidance",
        "Sun Veggie",
        "Sea Lord",
        "Black Sea",
        "Grass Shampoo",
        "Landing Aircraft",
        "Witch Dance",
        "Sleepless Night",
        "Angel Care",
        "Crystal River",
        "Soft Lipstick",
        "Salt Mountain",
        "Perfect White",
        "Fresh Oasis",
        "Strict November",
        "Morning Salad",
        "Deep Relief",
        "Sea Strike",
        "Night Call",
        "Supreme Sky",
        "Light Blue",
        "Mind Crawl",
        "Lily Meadow",
        "Sugar Lollipop",
        "Sweet Dessert",
        "Magic Ray",
        "Teen Party",
        "Frozen Heat",
        "Gagarin View",
        "Fabled Sunset",
        "Perfect Blue"
      ];

  static Gradient find(String name,
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    switch (name) {
      case "Warm Flame":
        {
          if (type == GradientType.radial)
            return FlutterRadialGradients.warmFlame(
                center: center, radius: radius, tileMode: tileMode);
          else if (type == GradientType.sweep)
            return FlutterSweepGradients.warmFlame(tileMode: tileMode);
          else
            return FlutterLinearGradients.warmFlame(tileMode: tileMode);
        }
        break;
      /* case "Night Fade":
        return nightFade(tileMode: tileMode);

      case "Spring Warmth":
        return springWarmth(tileMode: tileMode);

      case "Juicy Peach":
        return juicyPeach(tileMode: tileMode);

      case "Young Passion":
        return youngPassion(tileMode: tileMode);

      case "Lady Lips":
        return ladyLips(tileMode: tileMode);

      case "Sunny Morning":
        return sunnyMorning(tileMode: tileMode);

      case "Rainy Ashville":
        return rainyAshville(tileMode: tileMode);

      case "Frozen Dreams":
        return frozenDreams(tileMode: tileMode);

      case "Winter Neva":
        return winterNeva(tileMode: tileMode);

      case "Dusty Grass":
        return dustyGrass(tileMode: tileMode);

      case "Tempting Azure":
        return temptingAzure(tileMode: tileMode);

      case "Heavy Rain":
        return heavyRain(tileMode: tileMode);

      case "Amy Crisp":
        return amyCrisp(tileMode: tileMode);

      case "Mean Fruit":
        return meanFruit(tileMode: tileMode);

      case "Deep Blue":
        return deepBlue2(tileMode: tileMode);

      case "Ripe Malinka":
        return ripeMalinka(tileMode: tileMode);

      case "Cloudy Knoxville":
        return cloudyKnoxville(tileMode: tileMode);

      case "Malibu Beach":
        return malibuBeach(tileMode: tileMode);

      case "New Life":
        return newLife(tileMode: tileMode);

      case "True Sunset":
        return trueSunset(tileMode: tileMode);

      case "Morpheus Den":
        return morpheusDen(tileMode: tileMode);

      case "Rare Wind":
        return rareWind(tileMode: tileMode);

      case "Near Moon":
        return nearMoon(tileMode: tileMode);

      case "Wild Apple":
        return wildApple(tileMode: tileMode);

      case "Saint Petersburg":
        return saintPetersburg(tileMode: tileMode);

      case "Plum Plate":
        return plumPlate(tileMode: tileMode);

      case "Everlasting Sky":
        return everlastingSky(tileMode: tileMode);

      case "Happy Fisher":
        return happyFisher(tileMode: tileMode);

      case "Blessing":
        return blessing(tileMode: tileMode);

      case "Sharpeye Eagle":
        return sharpeyeEagle(tileMode: tileMode);

      case "Ladoga Bottom":
        return ladogaBottom(tileMode: tileMode);

      case "Lemon Gate":
        return lemonGate(tileMode: tileMode);

      case "Itmeo Branding":
        return itmeoBranding(tileMode: tileMode);

      case "Zeus Miracle":
        return zeusMiracle(tileMode: tileMode);

      case "Old Hat":
        return oldHat(tileMode: tileMode);

      case "Star Wine":
        return starWine(tileMode: tileMode);

      case "Happy Acid":
        return happyAcid(tileMode: tileMode);

      case "Awesome Pine":
        return awesomePine(tileMode: tileMode);

      case "New York":
        return newYork(tileMode: tileMode);

      case "Shy Rainbow":
        return shyRainbow(tileMode: tileMode);

      case "Mixed Hopes":
        return mixedHopes(tileMode: tileMode);

      case "Fly High":
        return flyHigh(tileMode: tileMode);

      case "Strong Bliss":
        return strongBliss(tileMode: tileMode);

      case "Fresh Milk":
        return freshMilk(tileMode: tileMode);

      case "Snow Again":
        return snowAgain(tileMode: tileMode);

      case "February Ink":
        return februaryInk(tileMode: tileMode);

      case "Kind Steel":
        return kindSteel(tileMode: tileMode);

      case "Soft Grass":
        return softGrass(tileMode: tileMode);

      case "Grown Early":
        return grownEarly(tileMode: tileMode);

      case "Sharp Blues":
        return sharpBlues(tileMode: tileMode);

      case "Shady Water":
        return shadyWater(tileMode: tileMode);

      case "Dirty Beauty":
        return dirtyBeauty(tileMode: tileMode);

      case "Great Whale":
        return greatWhale(tileMode: tileMode);

      case "Teen Notebook":
        return teenNotebook(tileMode: tileMode);

      case "Polite Rumors":
        return politeRumors(tileMode: tileMode);

      case "Sweet Period":
        return sweetPeriod(tileMode: tileMode);

      case "Wide Matrix":
        return wideMatrix(tileMode: tileMode);

      case "Soft Cherish":
        return softCherish(tileMode: tileMode);

      case "Red Salvation":
        return redSalvation(tileMode: tileMode);

      case "Burning Spring":
        return burningSpring(tileMode: tileMode);

      case "Night Party":
        return nightParty(tileMode: tileMode);

      case "Sky Glider":
        return skyGlider(tileMode: tileMode);

      case "Heaven Peach":
        return heavenPeach(tileMode: tileMode);

      case "Purple Division":
        return purpleDivision(tileMode: tileMode);

      case "Aqua Splash":
        return aquaSplash(tileMode: tileMode);

      case "Spiky Naga":
        return spikyNaga(tileMode: tileMode);

      case "Love Kiss":
        return loveKiss(tileMode: tileMode);

      case "Clean Mirror":
        return cleanMirror(tileMode: tileMode);

      case "Premium Dark":
        return premiumDark(tileMode: tileMode);

      case "Cold Evening":
        return coldEvening(tileMode: tileMode);

      case "Cochiti Lake":
        return cochitiLake(tileMode: tileMode);

      case "Summer Games":
        return summerGames(tileMode: tileMode);

      case "Passionate Bed":
        return passionateBed(tileMode: tileMode);

      case "Mountain Rock":
        return mountainRock(tileMode: tileMode);

      case "Desert Hump":
        return desertHump(tileMode: tileMode);

      case "Jungle Day":
        return jungleDay(tileMode: tileMode);

      case "Phoenix Start":
        return phoenixStart(tileMode: tileMode);

      case "October Silence":
        return octoberSilence(tileMode: tileMode);

      case "Faraway River":
        return farawayRiver(tileMode: tileMode);

      case "Alchemist Lab":
        return alchemistLab(tileMode: tileMode);

      case "Over Sun":
        return overSun(tileMode: tileMode);

      case "Premium White":
        return premiumWhite(tileMode: tileMode);

      case "Mars Party":
        return marsParty(tileMode: tileMode);

      case "Eternal Constance":
        return eternalConstance(tileMode: tileMode);

      case "Japan Blush":
        return japanBlush(tileMode: tileMode);

      case "Smiling Rain":
        return smilingRain(tileMode: tileMode);

      case "Cloudy Apple":
        return cloudyApple(tileMode: tileMode);

      case "Big Mango":
        return bigMango(tileMode: tileMode);

      case "Healthy Water":
        return healthyWater(tileMode: tileMode);

      case "Amour Amour":
        return amourAmour(tileMode: tileMode);

      case "Risky Concrete":
        return riskyConcrete(tileMode: tileMode);

      case "Strong Stick":
        return strongStick(tileMode: tileMode);

      case "Vicious Stance":
        return viciousStance(tileMode: tileMode);

      case "Palo Alto":
        return paloAlto(tileMode: tileMode);

      case "Happy Memories":
        return happyMemories(tileMode: tileMode);

      case "Midnight Bloom":
        return midnightBloom(tileMode: tileMode);

      case "Crystalline":
        return crystalline(tileMode: tileMode);

      case "Party Bliss":
        return partyBliss(tileMode: tileMode);

      case "Confident Cloud":
        return confidentCloud(tileMode: tileMode);

      case "Le Cocktail":
        return leCocktail(tileMode: tileMode);

      case "River City":
        return riverCity(tileMode: tileMode);

      case "Frozen Berry":
        return frozenBerry(tileMode: tileMode);

      case "Child Care":
        return childCare(tileMode: tileMode);

      case "Flying Lemon":
        return flyingLemon(tileMode: tileMode);

      case "New Retrowave":
        return newRetrowave(tileMode: tileMode);

      case "Hidden Jaguar":
        return hiddenJaguar(tileMode: tileMode);

      case "Above The Sky":
        return aboveTheSky(tileMode: tileMode);

      case "Nega":
        return nega(tileMode: tileMode);

      case "Dense Water":
        return denseWater(tileMode: tileMode);

      case "Seashore":
        return seashore(tileMode: tileMode);

      case "Marble Wall":
        return marbleWall(tileMode: tileMode);

      case "Cheerful Caramel":
        return cheerfulCaramel(tileMode: tileMode);

      case "Night Sky":
        return nightSky(tileMode: tileMode);

      case "Magic Lake":
        return magicLake(tileMode: tileMode);

      case "Young Grass":
        return youngGrass(tileMode: tileMode);

      case "Colorful Peach":
        return colorfulPeach(tileMode: tileMode);

      case "Gentle Care":
        return gentleCare(tileMode: tileMode);

      case "Plum Bath":
        return plumBath(tileMode: tileMode);

      case "Happy Unicorn":
        return happyUnicorn(tileMode: tileMode);

      case "African Field":
        return africanField(tileMode: tileMode);

      case "Solid Stone":
        return solidStone(tileMode: tileMode);

      case "Orange Juice":
        return orangeJuice(tileMode: tileMode);

      case "Glass Water":
        return glassWater(tileMode: tileMode);

      case "North Miracle":
        return northMiracle(tileMode: tileMode);

      case "Fruit Blend":
        return fruitBlend(tileMode: tileMode);

      case "Millennium Pine":
        return millenniumPine(tileMode: tileMode);

      case "High Flight":
        return highFlight(tileMode: tileMode);

      case "Mole Hall":
        return moleHall(tileMode: tileMode);

      case "Space Shift":
        return spaceShift(tileMode: tileMode);

      case "Forest Inei":
        return forestInei(tileMode: tileMode);

      case "Royal Garden":
        return royalGarden(tileMode: tileMode);

      case "Rich Metal":
        return richMetal(tileMode: tileMode);

      case "Juicy Cake":
        return juicyCake(tileMode: tileMode);

      case "Smart Indigo":
        return smartIndigo(tileMode: tileMode);

      case "Sand Strike":
        return sandStrike(tileMode: tileMode);

      case "Norse Beauty":
        return norseBeauty(tileMode: tileMode);

      case "Aqua Guidance":
        return aquaGuidance(tileMode: tileMode);

      case "Sun Veggie":
        return sunVeggie(tileMode: tileMode);

      case "Sea Lord":
        return seaLord(tileMode: tileMode);

      case "Black Sea":
        return blackSea(tileMode: tileMode);

      case "Grass Shampoo":
        return grassShampoo(tileMode: tileMode);

      case "Landing Aircraft":
        return landingAircraft(tileMode: tileMode);

      case "Witch Dance":
        return witchDance(tileMode: tileMode);

      case "Sleepless Night":
        return sleeplessNight(tileMode: tileMode);

      case "Angel Care":
        return angelCare(tileMode: tileMode);

      case "Crystal River":
        return crystalRiver(tileMode: tileMode);

      case "Soft Lipstick":
        return softLipstick(tileMode: tileMode);

      case "Salt Mountain":
        return saltMountain(tileMode: tileMode);

      case "Perfect White":
        return perfectWhite(tileMode: tileMode);

      case "Fresh Oasis":
        return freshOasis(tileMode: tileMode);

      case "Strict November":
        return strictNovember(tileMode: tileMode);

      case "Morning Salad":
        return morningSalad(tileMode: tileMode);

      case "Deep Relief":
        return deepRelief(tileMode: tileMode);

      case "Sea Strike":
        return seaStrike(tileMode: tileMode);

      case "Night Call":
        return nightCall(tileMode: tileMode);

      case "Supreme Sky":
        return supremeSky(tileMode: tileMode);

      case "Light Blue":
        return lightBlue(tileMode: tileMode);

      case "Mind Crawl":
        return mindCrawl(tileMode: tileMode);

      case "Lily Meadow":
        return lilyMeadow(tileMode: tileMode);

      case "Sugar Lollipop":
        return sugarLollipop(tileMode: tileMode);

      case "Sweet Dessert":
        return sweetDessert(tileMode: tileMode);

      case "Magic Ray":
        return magicRay(tileMode: tileMode);

      case "Teen Party":
        return teenParty(tileMode: tileMode);

      case "Frozen Heat":
        return frozenHeat(tileMode: tileMode);

      case "Gagarin View":
        return gagarinView(tileMode: tileMode);

      case "Fabled Sunset":
        return fabledSunset(tileMode: tileMode);

      case "Perfect Blue":
        return perfectBlue(tileMode: tileMode); */

      default:
        throw Exception("Gradient name not found.");
    }
  }
}
