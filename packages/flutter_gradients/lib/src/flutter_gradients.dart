import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:flutter_gradients/src/core/flutter_gradients_names.dart';
import 'package:flutter_gradients/src/core/flutter_gradients_type.dart';
import 'package:flutter_gradients/src/core/flutter_linear_gradients.dart';
import 'package:flutter_gradients/src/core/flutter_radial_gradients.dart';
import 'package:flutter_gradients/src/core/flutter_sweep_gradients.dart';

/// A 2D Gradient generator.
///
/// By default this class it will contains methods that will produce a `LinearGradient`.
/// If you want to get a `RadialGradient` set the `type` parameter to `GradientType.radial`, and
/// to `GradientType.sweep` for `SweepGradient`.
///
/// Now you can find all gradients just by their names
///
/// ```
/// FlutterGradients.findByName(FlutterGradientNames.aboveTheSky);
/// ```
/// Very simple
///
/// * For `LinearGradient` use this code :
/// ```
/// Container(
///   width: 150,
///   height: 150,
///   decoration: BoxDecoration(
///     shape: BoxShape.circle,
///     gradient: FlutterGradients.warmFlame(),
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
///     gradient: FlutterGradients.warmFlame(
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
///     gradient: FlutterGradients.warmFlame(type: GradientType.radial),
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
///     gradient: FlutterGradients.warmFlame(
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
  static List<String> names = [
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

  /// Above The Sky
  static Gradient aboveTheSky(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.aboveTheSky(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.aboveTheSky(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.aboveTheSky(tileMode: tileMode);
  }

  /// African Field
  static Gradient africanField(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.africanField(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.africanField(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.africanField(tileMode: tileMode);
  }

  /// Alchemist Lab
  static Gradient alchemistLab(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.alchemistLab(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.alchemistLab(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.alchemistLab(tileMode: tileMode);
  }

  /// Amour Amour
  static Gradient amourAmour(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.amourAmour(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.amourAmour(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.amourAmour(tileMode: tileMode);
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

  /// Angel Care
  static Gradient angelCare(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.angelCare(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.angelCare(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.angelCare(tileMode: tileMode);
  }

  /// Aqua Guidance
  static Gradient aquaGuidance(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.aquaGuidance(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.aquaGuidance(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.aquaGuidance(tileMode: tileMode);
  }

  /// Aqua Splash
  static Gradient aquaSplash(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.aquaSplash(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.aquaSplash(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.aquaSplash(tileMode: tileMode);
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

  /// Big Mango
  static Gradient bigMango(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.bigMango(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.bigMango(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.bigMango(tileMode: tileMode);
  }

  /// Black Sea
  static Gradient blackSea(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.blackSea(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.blackSea(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.blackSea(tileMode: tileMode);
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

  /// Burning Spring
  static Gradient burningSpring(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.burningSpring(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.burningSpring(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.burningSpring(tileMode: tileMode);
  }

  /// Cheerful Caramel
  static Gradient cheerfulCaramel(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.cheerfulCaramel(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.cheerfulCaramel(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.cheerfulCaramel(tileMode: tileMode);
  }

  /// Child Care
  static Gradient childCare(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.childCare(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.childCare(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.childCare(tileMode: tileMode);
  }

  /// Clean Mirror
  static Gradient cleanMirror(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.cleanMirror(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.cleanMirror(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.cleanMirror(tileMode: tileMode);
  }

  /// Cloudy Apple
  static Gradient cloudyApple(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.cloudyApple(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.cloudyApple(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.cloudyApple(tileMode: tileMode);
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

  /// Cochiti Lake
  static Gradient cochitiLake(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.cochitiLake(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.cochitiLake(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.cochitiLake(tileMode: tileMode);
  }

  /// Cold Evening
  static Gradient coldEvening(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.coldEvening(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.coldEvening(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.coldEvening(tileMode: tileMode);
  }

  /// Colorful Peach
  static Gradient colorfulPeach(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.colorfulPeach(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.colorfulPeach(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.colorfulPeach(tileMode: tileMode);
  }

  /// Confident Cloud
  static Gradient confidentCloud(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.confidentCloud(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.confidentCloud(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.confidentCloud(tileMode: tileMode);
  }

  /// Crystalline
  static Gradient crystalline(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.crystalline(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.crystalline(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.crystalline(tileMode: tileMode);
  }

  /// Crystal River
  static Gradient crystalRiver(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.crystalRiver(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.crystalRiver(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.crystalRiver(tileMode: tileMode);
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

  /// Deep Relief
  static Gradient deepRelief(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.deepRelief(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.deepRelief(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.deepRelief(tileMode: tileMode);
  }

  /// Dense Water
  static Gradient denseWater(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.denseWater(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.denseWater(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.denseWater(tileMode: tileMode);
  }

  /// Desert Hump
  static Gradient desertHump(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.desertHump(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.desertHump(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.desertHump(tileMode: tileMode);
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

  /// Eternal Constance
  static Gradient eternalConstance(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.eternalConstance(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.eternalConstance(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.eternalConstance(tileMode: tileMode);
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

  /// Fabled Sunset
  static Gradient fabledSunset(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.fabledSunset(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.fabledSunset(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.fabledSunset(tileMode: tileMode);
  }

  /// Faraway River
  static Gradient farawayRiver(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.farawayRiver(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.farawayRiver(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.farawayRiver(tileMode: tileMode);
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

  static Gradient findByName(FlutterGradientNames name,
          {GradientType type = GradientType.linear,
          AlignmentGeometry center = Alignment.center,
          double radius = 0.5,
          double startAngle = 0.0,
          double endAngle = math.pi * 2,
          TileMode tileMode = TileMode.repeated}) =>
      _find(names[name.index],
          type: type,
          center: center,
          radius: radius,
          startAngle: startAngle,
          endAngle: endAngle,
          tileMode: tileMode);

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

  /// Flying Lemon
  static Gradient flyingLemon(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.flyingLemon(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.flyingLemon(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.flyingLemon(tileMode: tileMode);
  }

  /// Forest Inei
  static Gradient forestInei(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.forestInei(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.forestInei(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.forestInei(tileMode: tileMode);
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

  /// Fresh Oasis
  static Gradient freshOasis(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.freshOasis(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.freshOasis(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.freshOasis(tileMode: tileMode);
  }

  /// Frozen Berry
  static Gradient frozenBerry(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.frozenBerry(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.frozenBerry(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.frozenBerry(tileMode: tileMode);
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

  /// Frozen Heat
  static Gradient frozenHeat(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.frozenHeat(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.frozenHeat(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.frozenHeat(tileMode: tileMode);
  }

  /// Fruit Blend
  static Gradient fruitBlend(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.fruitBlend(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.fruitBlend(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.fruitBlend(tileMode: tileMode);
  }

  /// Gagarin View
  static Gradient gagarinView(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.gagarinView(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.gagarinView(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.gagarinView(tileMode: tileMode);
  }

  /// Gentle Care
  static Gradient gentleCare(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.gentleCare(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.gentleCare(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.gentleCare(tileMode: tileMode);
  }

  /// Glass Water
  static Gradient glassWater(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.glassWater(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.glassWater(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.glassWater(tileMode: tileMode);
  }

  /// Grass Shampoo
  static Gradient grassShampoo(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.grassShampoo(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.grassShampoo(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.grassShampoo(tileMode: tileMode);
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

  /// Happy Memories
  static Gradient happyMemories(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.happyMemories(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.happyMemories(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.happyMemories(tileMode: tileMode);
  }

  /// Happy Unicorn
  static Gradient happyUnicorn(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.happyUnicorn(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.happyUnicorn(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.happyUnicorn(tileMode: tileMode);
  }

  /// Healthy Water
  static Gradient healthyWater(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.healthyWater(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.healthyWater(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.healthyWater(tileMode: tileMode);
  }

  /// Heaven Peach
  static Gradient heavenPeach(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.heavenPeach(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.heavenPeach(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.heavenPeach(tileMode: tileMode);
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

  /// Hidden Jaguar
  static Gradient hiddenJaguar(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.hiddenJaguar(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.hiddenJaguar(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.hiddenJaguar(tileMode: tileMode);
  }

  /// High Flight
  static Gradient highFlight(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.highFlight(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.highFlight(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.highFlight(tileMode: tileMode);
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

  /// Japan Blush
  static Gradient japanBlush(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.japanBlush(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.japanBlush(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.japanBlush(tileMode: tileMode);
  }

  /// Juicy Cake
  static Gradient juicyCake(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.juicyCake(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.juicyCake(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.juicyCake(tileMode: tileMode);
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

  /// Jungle Day
  static Gradient jungleDay(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.jungleDay(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.jungleDay(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.jungleDay(tileMode: tileMode);
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

  /// Landing Aircraft
  static Gradient landingAircraft(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.landingAircraft(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.landingAircraft(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.landingAircraft(tileMode: tileMode);
  }

  /// Le Cocktail
  static Gradient leCocktail(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.leCocktail(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.leCocktail(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.leCocktail(tileMode: tileMode);
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

  /// Light Blue
  static Gradient lightBlue(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.lightBlue(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.lightBlue(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.lightBlue(tileMode: tileMode);
  }

  /// Lily Meadow
  static Gradient lilyMeadow(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.lilyMeadow(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.lilyMeadow(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.lilyMeadow(tileMode: tileMode);
  }

  /// Love Kiss
  static Gradient loveKiss(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.loveKiss(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.loveKiss(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.loveKiss(tileMode: tileMode);
  }

  /// Magic Lake
  static Gradient magicLake(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.magicLake(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.magicLake(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.magicLake(tileMode: tileMode);
  }

  /// Magic Ray
  static Gradient magicRay(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.magicRay(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.magicRay(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.magicRay(tileMode: tileMode);
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

  /// Marble Wall
  static Gradient marbleWall(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.marbleWall(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.marbleWall(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.marbleWall(tileMode: tileMode);
  }

  /// Mars Party
  static Gradient marsParty(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.marsParty(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.marsParty(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.marsParty(tileMode: tileMode);
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

  /// Midnight Bloom
  static Gradient midnightBloom(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.midnightBloom(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.midnightBloom(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.midnightBloom(tileMode: tileMode);
  }

  /// Millennium Pine
  static Gradient millenniumPine(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.millenniumPine(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.millenniumPine(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.millenniumPine(tileMode: tileMode);
  }

  /// Mind Crawl
  static Gradient mindCrawl(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.mindCrawl(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.mindCrawl(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.mindCrawl(tileMode: tileMode);
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

  /// Mole Hall
  static Gradient moleHall(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.moleHall(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.moleHall(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.moleHall(tileMode: tileMode);
  }

  /// Morning Salad
  static Gradient morningSalad(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.morningSalad(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.morningSalad(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.morningSalad(tileMode: tileMode);
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

  /// Mountain Rock
  static Gradient mountainRock(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.mountainRock(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.mountainRock(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.mountainRock(tileMode: tileMode);
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

  /// Nega
  static Gradient nega(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.nega(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.nega(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.nega(tileMode: tileMode);
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

  /// New Retrowave
  static Gradient newRetrowave(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.newRetrowave(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.newRetrowave(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.newRetrowave(tileMode: tileMode);
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

  /// Night Call
  static Gradient nightCall(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.nightCall(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.nightCall(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.nightCall(tileMode: tileMode);
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

  /// Night Party
  static Gradient nightParty(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.nightParty(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.nightParty(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.nightParty(tileMode: tileMode);
  }

  /// Night Sky
  static Gradient nightSky(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.nightSky(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.nightSky(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.nightSky(tileMode: tileMode);
  }

  /// Norse Beauty
  static Gradient norseBeauty(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.norseBeauty(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.norseBeauty(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.norseBeauty(tileMode: tileMode);
  }

  /// North Miracle
  static Gradient northMiracle(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.northMiracle(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.northMiracle(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.northMiracle(tileMode: tileMode);
  }

  /// October Silence
  static Gradient octoberSilence(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.octoberSilence(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.octoberSilence(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.octoberSilence(tileMode: tileMode);
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

  /// Orange Juice
  static Gradient orangeJuice(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.orangeJuice(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.orangeJuice(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.orangeJuice(tileMode: tileMode);
  }

  /// Over Sun
  static Gradient overSun(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.overSun(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.overSun(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.overSun(tileMode: tileMode);
  }

  /// Palo Alto
  static Gradient paloAlto(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.paloAlto(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.paloAlto(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.paloAlto(tileMode: tileMode);
  }

  /// Party Bliss
  static Gradient partyBliss(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.partyBliss(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.partyBliss(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.partyBliss(tileMode: tileMode);
  }

  /// Passionate Bed
  static Gradient passionateBed(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.passionateBed(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.passionateBed(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.passionateBed(tileMode: tileMode);
  }

  /// Perfect Blue
  static Gradient perfectBlue(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.perfectBlue(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.perfectBlue(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.perfectBlue(tileMode: tileMode);
  }

  /// Perfect White
  static Gradient perfectWhite(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.perfectWhite(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.perfectWhite(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.perfectWhite(tileMode: tileMode);
  }

  /// Phoenix Start
  static Gradient phoenixStart(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.phoenixStart(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.phoenixStart(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.phoenixStart(tileMode: tileMode);
  }

  /// Plum Bath
  static Gradient plumBath(
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

  /// Premium Dark
  static Gradient premiumDark(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.premiumDark(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.premiumDark(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.premiumDark(tileMode: tileMode);
  }

  /// Premium White
  static Gradient premiumWhite(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.premiumWhite(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.premiumWhite(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.premiumWhite(tileMode: tileMode);
  }

  /// Purple Division
  static Gradient purpleDivision(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.purpleDivision(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.purpleDivision(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.purpleDivision(tileMode: tileMode);
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

  /// Red Salvation
  static Gradient redSalvation(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.redSalvation(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.redSalvation(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.redSalvation(tileMode: tileMode);
  }

  /// Rich Metal
  static Gradient richMetal(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.richMetal(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.richMetal(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.richMetal(tileMode: tileMode);
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

  /// Risky Concrete
  static Gradient riskyConcrete(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.riskyConcrete(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.riskyConcrete(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.riskyConcrete(tileMode: tileMode);
  }

  /// River City
  static Gradient riverCity(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.riverCity(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.riverCity(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.riverCity(tileMode: tileMode);
  }

  /// Royal Garden
  static Gradient royalGarden(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.royalGarden(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.royalGarden(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.royalGarden(tileMode: tileMode);
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

  /// Salt Mountain
  static Gradient saltMountain(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.saltMountain(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.saltMountain(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.saltMountain(tileMode: tileMode);
  }

  /// Sand Strike
  static Gradient sandStrike(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.sandStrike(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.sandStrike(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.sandStrike(tileMode: tileMode);
  }

  /// Sea Lord
  static Gradient seaLord(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.seaLord(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.seaLord(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.seaLord(tileMode: tileMode);
  }

  /// Seashore
  static Gradient seashore(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.seashore(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.seashore(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.seashore(tileMode: tileMode);
  }

  /// Sea Strike
  static Gradient seaStrike(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.seaStrike(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.seaStrike(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.seaStrike(tileMode: tileMode);
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

  /// Sky Glider
  static Gradient skyGlider(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.skyGlider(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.skyGlider(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.skyGlider(tileMode: tileMode);
  }

  /// Sleepless Night
  static Gradient sleeplessNight(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.sleeplessNight(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.sleeplessNight(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.sleeplessNight(tileMode: tileMode);
  }

  /// Smart Indigo
  static Gradient smartIndigo(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.smartIndigo(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.smartIndigo(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.smartIndigo(tileMode: tileMode);
  }

  /// Smiling Rain
  static Gradient smilingRain(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.smilingRain(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.smilingRain(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.smilingRain(tileMode: tileMode);
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

  /// Soft Cherish
  static Gradient softCherish(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.softCherish(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.softCherish(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.softCherish(tileMode: tileMode);
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

  /// Soft Lipstick
  static Gradient softLipstick(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.softLipstick(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.softLipstick(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.softLipstick(tileMode: tileMode);
  }

  /// Solid Stone
  static Gradient solidStone(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.solidStone(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.solidStone(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.solidStone(tileMode: tileMode);
  }

  /// Space Shift
  static Gradient spaceShift(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.spaceShift(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.spaceShift(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.spaceShift(tileMode: tileMode);
  }

  /// Spiky Naga
  static Gradient spikyNaga(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.spikyNaga(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.spikyNaga(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.spikyNaga(tileMode: tileMode);
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

  /// Strict November
  static Gradient strictNovember(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.strictNovember(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.strictNovember(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.strictNovember(tileMode: tileMode);
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

  /// Strong Stick
  static Gradient strongStick(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.strongStick(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.strongStick(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.strongStick(tileMode: tileMode);
  }

  /// Sugar Lollipop
  static Gradient sugarLollipop(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.sugarLollipop(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.sugarLollipop(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.sugarLollipop(tileMode: tileMode);
  }

  /// Summer Games
  static Gradient summerGames(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.summerGames(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.summerGames(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.summerGames(tileMode: tileMode);
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

  /// Sun Veggie
  static Gradient sunVeggie(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.sunVeggie(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.sunVeggie(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.sunVeggie(tileMode: tileMode);
  }

  /// Supreme Sky
  static Gradient supremeSky(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.supremeSky(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.supremeSky(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.supremeSky(tileMode: tileMode);
  }

  /// Sweet Dessert
  static Gradient sweetDessert(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.sweetDessert(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.sweetDessert(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.sweetDessert(tileMode: tileMode);
  }

  /// Sweet Period
  static Gradient sweetPeriod(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.sweetPeriod(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.sweetPeriod(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.sweetPeriod(tileMode: tileMode);
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

  /// Teen Party
  static Gradient teenParty(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.teenParty(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.teenParty(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.teenParty(tileMode: tileMode);
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

  /// Vicious Stance
  static Gradient viciousStance(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.viciousStance(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.viciousStance(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.viciousStance(tileMode: tileMode);
  }

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

  /// Wide Matrix
  static Gradient wideMatrix(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.wideMatrix(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.wideMatrix(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.wideMatrix(tileMode: tileMode);
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

  /// Witch Dance
  static Gradient witchDance(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.witchDance(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.witchDance(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.witchDance(tileMode: tileMode);
  }

  /// Young Grass
  static Gradient youngGrass(
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    if (type == GradientType.radial)
      return FlutterRadialGradients.youngGrass(
        center: center,
        radius: radius,
        tileMode: tileMode,
      );
    else if (type == GradientType.sweep)
      return FlutterSweepGradients.youngGrass(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        tileMode: tileMode,
      );
    else
      return FlutterLinearGradients.youngGrass(tileMode: tileMode);
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

  static Gradient _find(String name,
      {GradientType type = GradientType.linear,
      AlignmentGeometry center = Alignment.center,
      double radius = 0.5,
      double startAngle = 0.0,
      double endAngle = math.pi * 2,
      TileMode tileMode = TileMode.repeated}) {
    switch (name) {
      case "Warm Flame":
        return warmFlame(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Night Fade":
        return nightFade(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Spring Warmth":
        return springWarmth(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);
      case "Juicy Peach":
        return juicyPeach(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Young Passion":
        return youngPassion(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Lady Lips":
        return ladyLips(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sunny Morning":
        return sunnyMorning(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Rainy Ashville":
        return rainyAshville(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Frozen Dreams":
        return frozenDreams(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Winter Neva":
        return winterNeva(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Dusty Grass":
        return dustyGrass(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Tempting Azure":
        return temptingAzure(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Heavy Rain":
        return heavyRain(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Amy Crisp":
        return amyCrisp(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Mean Fruit":
        return meanFruit(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Deep Blue":
        return deepBlue2(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Ripe Malinka":
        return ripeMalinka(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Cloudy Knoxville":
        return cloudyKnoxville(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Malibu Beach":
        return malibuBeach(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "New Life":
        return newLife(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "True Sunset":
        return trueSunset(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Morpheus Den":
        return morpheusDen(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Rare Wind":
        return rareWind(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Near Moon":
        return nearMoon(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Wild Apple":
        return wildApple(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Saint Petersburg":
        return saintPetersburg(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Plum Plate":
        return plumPlate(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Everlasting Sky":
        return everlastingSky(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Happy Fisher":
        return happyFisher(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Blessing":
        return blessing(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sharpeye Eagle":
        return sharpeyeEagle(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Ladoga Bottom":
        return ladogaBottom(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Lemon Gate":
        return lemonGate(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Itmeo Branding":
        return itmeoBranding(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Zeus Miracle":
        return zeusMiracle(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Old Hat":
        return oldHat(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Star Wine":
        return starWine(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Happy Acid":
        return happyAcid(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Awesome Pine":
        return awesomePine(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "New York":
        return newYork(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Shy Rainbow":
        return shyRainbow(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Mixed Hopes":
        return mixedHopes(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Fly High":
        return flyHigh(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Strong Bliss":
        return strongBliss(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Fresh Milk":
        return freshMilk(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Snow Again":
        return snowAgain(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "February Ink":
        return februaryInk(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Kind Steel":
        return kindSteel(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Soft Grass":
        return softGrass(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Grown Early":
        return grownEarly(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sharp Blues":
        return sharpBlues(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Shady Water":
        return shadyWater(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Dirty Beauty":
        return dirtyBeauty(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Great Whale":
        return greatWhale(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Teen Notebook":
        return teenNotebook(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Polite Rumors":
        return politeRumors(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sweet Period":
        return sweetPeriod(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Wide Matrix":
        return wideMatrix(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Soft Cherish":
        return softCherish(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Red Salvation":
        return redSalvation(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Burning Spring":
        return burningSpring(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Night Party":
        return nightParty(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sky Glider":
        return skyGlider(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Heaven Peach":
        return heavenPeach(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Purple Division":
        return purpleDivision(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Aqua Splash":
        return aquaSplash(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Spiky Naga":
        return spikyNaga(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Love Kiss":
        return loveKiss(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Clean Mirror":
        return cleanMirror(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Premium Dark":
        return premiumDark(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Cold Evening":
        return coldEvening(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Cochiti Lake":
        return cochitiLake(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Summer Games":
        return summerGames(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Passionate Bed":
        return passionateBed(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Mountain Rock":
        return mountainRock(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Desert Hump":
        return desertHump(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Jungle Day":
        return jungleDay(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Phoenix Start":
        return phoenixStart(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "October Silence":
        return octoberSilence(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Faraway River":
        return farawayRiver(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Alchemist Lab":
        return alchemistLab(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Over Sun":
        return overSun(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Premium White":
        return premiumWhite(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Mars Party":
        return marsParty(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Eternal Constance":
        return eternalConstance(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Japan Blush":
        return japanBlush(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Smiling Rain":
        return smilingRain(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Cloudy Apple":
        return cloudyApple(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Big Mango":
        return bigMango(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Healthy Water":
        return healthyWater(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Amour Amour":
        return amourAmour(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Risky Concrete":
        return riskyConcrete(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Strong Stick":
        return strongStick(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Vicious Stance":
        return viciousStance(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Palo Alto":
        return paloAlto(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Happy Memories":
        return happyMemories(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Midnight Bloom":
        return midnightBloom(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Crystalline":
        return crystalline(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Party Bliss":
        return partyBliss(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Confident Cloud":
        return confidentCloud(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Le Cocktail":
        return leCocktail(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "River City":
        return riverCity(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Frozen Berry":
        return frozenBerry(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Child Care":
        return childCare(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Flying Lemon":
        return flyingLemon(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "New Retrowave":
        return newRetrowave(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Hidden Jaguar":
        return hiddenJaguar(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Above The Sky":
        return aboveTheSky(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Nega":
        return nega(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Dense Water":
        return denseWater(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Seashore":
        return seashore(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Marble Wall":
        return marbleWall(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Cheerful Caramel":
        return cheerfulCaramel(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Night Sky":
        return nightSky(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Magic Lake":
        return magicLake(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Young Grass":
        return youngGrass(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Colorful Peach":
        return colorfulPeach(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Gentle Care":
        return gentleCare(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Plum Bath":
        return plumBath(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Happy Unicorn":
        return happyUnicorn(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "African Field":
        return africanField(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Solid Stone":
        return solidStone(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Orange Juice":
        return orangeJuice(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Glass Water":
        return glassWater(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "North Miracle":
        return northMiracle(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Fruit Blend":
        return fruitBlend(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Millennium Pine":
        return millenniumPine(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "High Flight":
        return highFlight(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Mole Hall":
        return moleHall(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Space Shift":
        return spaceShift(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Forest Inei":
        return forestInei(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Royal Garden":
        return royalGarden(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Rich Metal":
        return richMetal(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Juicy Cake":
        return juicyCake(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Smart Indigo":
        return smartIndigo(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sand Strike":
        return sandStrike(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Norse Beauty":
        return norseBeauty(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Aqua Guidance":
        return aquaGuidance(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sun Veggie":
        return sunVeggie(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sea Lord":
        return seaLord(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Black Sea":
        return blackSea(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Grass Shampoo":
        return grassShampoo(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Landing Aircraft":
        return landingAircraft(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Witch Dance":
        return witchDance(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sleepless Night":
        return sleeplessNight(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Angel Care":
        return angelCare(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Crystal River":
        return crystalRiver(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Soft Lipstick":
        return softLipstick(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Salt Mountain":
        return saltMountain(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Perfect White":
        return perfectWhite(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Fresh Oasis":
        return freshOasis(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Strict November":
        return strictNovember(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Morning Salad":
        return morningSalad(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Deep Relief":
        return deepRelief(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sea Strike":
        return seaStrike(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Night Call":
        return nightCall(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Supreme Sky":
        return supremeSky(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Light Blue":
        return lightBlue(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Mind Crawl":
        return mindCrawl(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Lily Meadow":
        return lilyMeadow(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sugar Lollipop":
        return sugarLollipop(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Sweet Dessert":
        return sweetDessert(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Magic Ray":
        return magicRay(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Teen Party":
        return teenParty(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Frozen Heat":
        return frozenHeat(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Gagarin View":
        return gagarinView(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Fabled Sunset":
        return fabledSunset(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      case "Perfect Blue":
        return perfectBlue(
            type: type,
            endAngle: endAngle,
            startAngle: startAngle,
            center: center,
            radius: radius,
            tileMode: tileMode);

      default:
        throw Exception("Gradient name not found.");
    }
  }
}
