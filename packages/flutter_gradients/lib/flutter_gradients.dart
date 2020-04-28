library flutter_gradients;

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
export 'package:flutter_gradients/src/flutter_gradients.dart';
export 'package:flutter_gradients/src/core/flutter_gradients_type.dart';
export 'package:flutter_gradients/src/core/flutter_gradients_names.dart';
