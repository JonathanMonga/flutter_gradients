import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_gradients/src/core/create_linear_gradient.dart';
import 'package:flutter_gradients/src/core/flutter_gradients_hex.dart';

/// A facade class that contains all the methodes that generate a `LinearGradient`.
///
/// Sample code to use :
///
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
/// You can set also the `tileMode`, that by default is set on `TileMode.repeated`
///
/// ```
/// FlutterGradients.warmFlame(tileMode = TileMode.clamp),
/// ```
class FlutterLinearGradients {
  static LinearGradient linear(
    String name,
    double angle,
    List<Color> colors,
    List<double> stops,
    TileMode tileMode,
  ) =>
      create(
        angle,
        colors,
        stops,
        tileMode,
      );

  /// 1. Warm Flame
  static Gradient warmFlame({TileMode tileMode = TileMode.clamp}) => linear(
        "Warm Flame",
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
  static Gradient nightFade({required TileMode tileMode}) => linear(
        "Night Fade",
        -90.0,
        [stringToColor("#a18cd1"), stringToColor("#fbc2eb")],
        [0.0, 1.0],
        tileMode,
      );

  /// 3. Spring Warmth
  static Gradient springWarmth({required TileMode tileMode}) => linear(
        "Spring Warmth",
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
  static Gradient juicyPeach({required TileMode tileMode}) => linear(
        "Juicy Peach",
        0.0,
        [stringToColor("#ffecd2"), stringToColor("#fcb69f")],
        [0.0, 1.0],
        tileMode,
      );

  /// 5. Young Passion
  static Gradient youngPassion({required TileMode tileMode}) => linear(
        "Young Passion",
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
  static Gradient ladyLips({required TileMode tileMode}) => linear(
        "Lady Lips",
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
  static Gradient sunnyMorning({required TileMode tileMode}) => linear(
        "Sunny Morning",
        30.0,
        [stringToColor("#f6d365"), stringToColor("#fda085")],
        [0.0, 1.0],
        tileMode,
      );

  /// 8. Rainy Ashville
  static Gradient rainyAshville({required TileMode tileMode}) => linear(
        "Rainy Ashville",
        -90.0,
        [stringToColor("#fbc2eb"), stringToColor("#a6c1ee")],
        [0.0, 1.0],
        tileMode,
      );

  /// 9. Frozen Dreams
  static Gradient frozenDreams({required TileMode tileMode}) => linear(
        "Frozen Dreams",
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
  static Gradient winterNeva({required TileMode tileMode}) => linear(
        "Winter Neva",
        30.0,
        [stringToColor("#a1c4fd"), stringToColor("#c2e9fb")],
        [0.0, 1.0],
        tileMode,
      );

  /// 11. Dusty Grass
  static Gradient dustyGrass({required TileMode tileMode}) => linear(
        "Dusty Grass",
        30.0,
        [stringToColor("#d4fc79"), stringToColor("#96e6a1")],
        [0.0, 1.0],
        tileMode,
      );

  /// 12. Tempting Azure
  static Gradient temptingAzure({required TileMode tileMode}) => linear(
        "Tempting Azure",
        30.0,
        [stringToColor("#84fab0"), stringToColor("#8fd3f4")],
        [0.0, 1.0],
        tileMode,
      );

  /// 13. Heavy Rain
  static Gradient heavyRain({required TileMode tileMode}) => linear(
        "Heavy Rain",
        -90.0,
        [stringToColor("#cfd9df"), stringToColor("#e2ebf0")],
        [0.0, 1.0],
        tileMode,
      );

  /// 14. Amy Crisp
  static Gradient amyCrisp({required TileMode tileMode}) => linear(
        "Amy Crisp",
        30.0,
        [stringToColor("#a6c0fe"), stringToColor("#f68084")],
        [0.0, 1.0],
        tileMode,
      );

  /// 15. Mean Fruit
  static Gradient meanFruit({required TileMode tileMode}) => linear(
        "Mean Fruit",
        30.0,
        [stringToColor("#fccb90"), stringToColor("#d57eeb")],
        [0.0, 1.0],
        tileMode,
      );

  /// 16. Deep Blue
  static Gradient deepBlue({required TileMode tileMode}) => linear(
        "Deep Blue",
        30.0,
        [stringToColor("#e0c3fc"), stringToColor("#8ec5fc")],
        [0.0, 1.0],
        tileMode,
      );

  /// 17. Ripe Malinka
  static Gradient ripeMalinka({required TileMode tileMode}) => linear(
        "Ripe Malinka",
        30.0,
        [stringToColor("#f093fb"), stringToColor("#f5576c")],
        [0.0, 1.0],
        tileMode,
      );

  /// 18. Cloudy Knoxville
  static Gradient cloudyKnoxville({required TileMode tileMode}) => linear(
        "Cloudy Knoxville",
        30.0,
        [stringToColor("#fdfbfb"), stringToColor("#ebedee")],
        [0.0, 1.0],
        tileMode,
      );

  /// 19. Malibu Beach
  static Gradient malibuBeach({required TileMode tileMode}) => linear(
        "Malibu Beach",
        0.0,
        [stringToColor("#4facfe"), stringToColor("#00f2fe")],
        [0.0, 1.0],
        tileMode,
      );

  /// 20. New Life
  static Gradient newLife({required TileMode tileMode}) => linear(
        "New Life",
        0.0,
        [stringToColor("#43e97b"), stringToColor("#38f9d7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 21. True Sunset
  static Gradient trueSunset({required TileMode tileMode}) => linear(
        "True Sunset",
        0.0,
        [stringToColor("#fa709a"), stringToColor("#fee140")],
        [0.0, 1.0],
        tileMode,
      );

  /// 22. Morpheus Den
  static Gradient morpheusDen({required TileMode tileMode}) => linear(
        "Morpheus Den",
        -90.0,
        [stringToColor("#30cfd0"), stringToColor("#330867")],
        [0.0, 1.0],
        tileMode,
      );

  /// 23. Rare Wind
  static Gradient rareWind({required TileMode tileMode}) => linear(
        "Rare Wind",
        -90.0,
        [stringToColor("#a8edea"), stringToColor("#fed6e3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 24. Near Moon
  static Gradient nearMoon({required TileMode tileMode}) => linear(
        "Near Moon",
        -90.0,
        [stringToColor("#5ee7df"), stringToColor("#b490ca")],
        [0.0, 1.0],
        tileMode,
      );

  /// 25. Wild Apple
  static Gradient wildApple({required TileMode tileMode}) => linear(
        "Wild Apple",
        -90.0,
        [stringToColor("#d299c2"), stringToColor("#fef9d7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 26. Saint Petersburg
  static Gradient saintPetersburg({required TileMode tileMode}) => linear(
        "Saint Petersburg",
        45.0,
        [stringToColor("#f5f7fa"), stringToColor("#c3cfe2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 28. Plum Plate
  static Gradient plumPlate({required TileMode tileMode}) => linear(
        "Plum Plate",
        45.0,
        [stringToColor("#667eea"), stringToColor("#764ba2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 29. Everlasting Sky
  static Gradient everlastingSky({required TileMode tileMode}) => linear(
        "Everlasting Sky",
        45.0,
        [stringToColor("#fdfcfb"), stringToColor("#e2d1c3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 30. Happy Fisher
  static Gradient happyFisher({required TileMode tileMode}) => linear(
        "Happy Fisher",
        30.0,
        [stringToColor("#89f7fe"), stringToColor("#66a6ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 31. Blessing
  static Gradient blessing({required TileMode tileMode}) => linear(
        "Blessing",
        -90.0,
        [stringToColor("#fddb92"), stringToColor("#d1fdff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 32. Sharpeye Eagle
  static Gradient sharpeyeEagle({required TileMode tileMode}) => linear(
        "Sharpeye Eagle",
        -90.0,
        [stringToColor("#9890e3"), stringToColor("#b1f4cf")],
        [0.0, 1.0],
        tileMode,
      );

  /// 33. Ladoga Bottom
  static Gradient ladogaBottom({required TileMode tileMode}) => linear(
        "Ladoga Bottom",
        -90.0,
        [stringToColor("#ebc0fd"), stringToColor("#d9ded8")],
        [0.0, 1.0],
        tileMode,
      );

  /// 34. Lemon Gate
  static Gradient lemonGate({required TileMode tileMode}) => linear(
        "Lemon Gate",
        -90.0,
        [stringToColor("#96fbc4"), stringToColor("#f9f586")],
        [0.0, 1.0],
        tileMode,
      );

  /// 35. Itmeo Branding
  static Gradient itmeoBranding({required TileMode tileMode}) => linear(
        "Itmeo Branding",
        90.0,
        [stringToColor("#2af598"), stringToColor("#009efd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 36. Zeus Miracle
  static Gradient zeusMiracle({required TileMode tileMode}) => linear(
        "Zeus Miracle",
        -90.0,
        [stringToColor("#cd9cf2"), stringToColor("#f6f3ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 37. Old Hat
  static Gradient oldHat({required TileMode tileMode}) => linear(
        "Old Hat",
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
  static Gradient starWine({required TileMode tileMode}) => linear(
        "Star Wine",
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
  static Gradient deepBlue2({required TileMode tileMode}) => linear(
        "Deep Blue",
        0.0,
        [stringToColor("#6a11cb"), stringToColor("#2575fc")],
        [0.0, 1.0],
        tileMode,
      );

  /// 41. Happy Acid
  static Gradient happyAcid({required TileMode tileMode}) => linear(
        "Happy Acid",
        -90.0,
        [stringToColor("#37ecba"), stringToColor("#72afd3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 42. Awesome Pine
  static Gradient awesomePine({required TileMode tileMode}) => linear(
        "Awesome Pine",
        -90.0,
        [stringToColor("#ebbba7"), stringToColor("#cfc7f8")],
        [0.0, 1.0],
        tileMode,
      );

  /// 43. New York
  static Gradient newYork({required TileMode tileMode}) => linear(
        "New York",
        -90.0,
        [stringToColor("#fff1eb"), stringToColor("#ace0f9")],
        [0.0, 1.0],
        tileMode,
      );

  /// 44. Shy Rainbow
  static Gradient shyRainbow({required TileMode tileMode}) => linear(
        "Shy Rainbow",
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
  static Gradient mixedHopes({required TileMode tileMode}) => linear(
        "Mixed Hopes",
        -90.0,
        [stringToColor("#c471f5"), stringToColor("#fa71cd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 47. Fly High
  static Gradient flyHigh({required TileMode tileMode}) => linear(
        "Fly High",
        -90.0,
        [stringToColor("#48c6ef"), stringToColor("#6f86d6")],
        [0.0, 1.0],
        tileMode,
      );

  /// 48. Strong Bliss
  static Gradient strongBliss({required TileMode tileMode}) => linear(
        "Strong Bliss",
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
  static Gradient freshMilk({required TileMode tileMode}) => linear(
        "Fresh Milk",
        -90.0,
        [stringToColor("#feada6"), stringToColor("#f5efef")],
        [0.0, 1.0],
        tileMode,
      );

  /// 50. Snow Again
  static Gradient snowAgain({required TileMode tileMode}) => linear(
        "Snow Again",
        -90.0,
        [stringToColor("#e6e9f0"), stringToColor("#eef1f5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 51. February Ink
  static Gradient februaryInk({required TileMode tileMode}) => linear(
        "February Ink",
        -90.0,
        [stringToColor("#accbee"), stringToColor("#e7f0fd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 52. Kind Steel
  static Gradient kindSteel({required TileMode tileMode}) => linear(
        "Kind Steel",
        -110.0,
        [stringToColor("#e9defa"), stringToColor("#fbfcdb")],
        [0.0, 1.0],
        tileMode,
      );

  /// 53. Soft Grass
  static Gradient softGrass({required TileMode tileMode}) => linear(
        "Soft Grass",
        -90.0,
        [stringToColor("#c1dfc4"), stringToColor("#deecdd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 54. Grown Early
  static Gradient grownEarly({required TileMode tileMode}) => linear(
        "Grown Early",
        -90.0,
        [stringToColor("#0ba360"), stringToColor("#3cba92")],
        [0.0, 1.0],
        tileMode,
      );

  /// 55. Sharp Blues
  static Gradient sharpBlues({required TileMode tileMode}) => linear(
        "Sharp Blues",
        -90.0,
        [stringToColor("#00c6fb"), stringToColor("#005bea")],
        [0.0, 1.0],
        tileMode,
      );

  /// 56. Shady Water
  static Gradient shadyWater({required TileMode tileMode}) => linear(
        "Shady Water",
        0.0,
        [stringToColor("#74ebd5"), stringToColor("#9face6")],
        [0.0, 1.0],
        tileMode,
      );

  /// 57. Dirty Beauty
  static Gradient dirtyBeauty({required TileMode tileMode}) => linear(
        "Dirty Beauty",
        -90.0,
        [stringToColor("#6a85b6"), stringToColor("#bac8e0")],
        [0.0, 1.0],
        tileMode,
      );

  /// 58. Great Whale
  static Gradient greatWhale({required TileMode tileMode}) => linear(
        "Great Whale",
        -90.0,
        [stringToColor("#a3bded"), stringToColor("#6991c7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 59. Teen Notebook
  static Gradient teenNotebook({required TileMode tileMode}) => linear(
        "Teen Notebook",
        -90.0,
        [stringToColor("#9795f0"), stringToColor("#fbc8d4")],
        [0.0, 1.0],
        tileMode,
      );

  /// 60. Polite Rumors
  static Gradient politeRumors({required TileMode tileMode}) => linear(
        "Polite Rumors",
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
  static Gradient sweetPeriod({required TileMode tileMode}) => linear(
        "Sweet Period",
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
  static Gradient wideMatrix({required TileMode tileMode}) => linear(
        "Wide Matrix",
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
  static Gradient softCherish({required TileMode tileMode}) => linear(
        "Soft Cherish",
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
  static Gradient redSalvation({required TileMode tileMode}) => linear(
        "Red Salvation",
        -90.0,
        [stringToColor("#f43b47"), stringToColor("#453a94")],
        [0.0, 1.0],
        tileMode,
      );

  /// 65. Burning Spring
  static Gradient burningSpring({required TileMode tileMode}) => linear(
        "Burning Spring",
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
  static Gradient nightParty({required TileMode tileMode}) => linear(
        "Night Party",
        -90.0,
        [stringToColor("#0250c5"), stringToColor("#d43f8d")],
        [0.0, 1.0],
        tileMode,
      );

  /// 67. Sky Glider
  static Gradient skyGlider({required TileMode tileMode}) => linear(
        "Sky Glider",
        -90.0,
        [stringToColor("#88d3ce"), stringToColor("#6e45e2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 68. Heaven Peach
  static Gradient heavenPeach({required TileMode tileMode}) => linear(
        "Heaven Peach",
        -90.0,
        [stringToColor("#d9afd9"), stringToColor("#97d9e1")],
        [0.0, 1.0],
        tileMode,
      );

  /// 69. Purple Division
  static Gradient purpleDivision({required TileMode tileMode}) => linear(
        "Purple Division",
        -90.0,
        [stringToColor("#7028e4"), stringToColor("#e5b2ca")],
        [0.0, 1.0],
        tileMode,
      );

  /// 70. Aqua Splash
  static Gradient aquaSplash({required TileMode tileMode}) => linear(
        "Aqua Splash",
        -75.0,
        [stringToColor("#13547a"), stringToColor("#80d0c7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 72. Spiky Naga
  static Gradient spikyNaga({required TileMode tileMode}) => linear(
        "Spiky Naga",
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
  static Gradient loveKiss({required TileMode tileMode}) => linear(
        "Love Kiss",
        -90.0,
        [stringToColor("#ff0844"), stringToColor("#ffb199")],
        [0.0, 1.0],
        tileMode,
      );

  /// 75. Clean Mirror
  static Gradient cleanMirror({required TileMode tileMode}) => linear(
        "Clean Mirror",
        -45.0,
        [stringToColor("#93a5cf"), stringToColor("#e4efe9")],
        [0.0, 1.0],
        tileMode,
      );

  /// 76. Premium Dark
  static Gradient premiumDark({required TileMode tileMode}) => linear(
        "Premium Dark",
        0.0,
        [stringToColor("#434343"), Colors.black],
        [0.0, 1.0],
        tileMode,
      );

  /// 77. Cold Evening
  static Gradient coldEvening({required TileMode tileMode}) => linear(
        "Cold Evening",
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
  static Gradient cochitiLake({required TileMode tileMode}) => linear(
        "Cochiti Lake",
        -45.0,
        [stringToColor("#93a5cf"), stringToColor("#e4efe9")],
        [0.0, 1.0],
        tileMode,
      );

  /// 79. Summer Games
  static Gradient summerGames({required TileMode tileMode}) => linear(
        "Summer Games",
        0.0,
        [stringToColor("#92fe9d"), stringToColor("#00c9ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 80. Passionate Bed
  static Gradient passionateBed({required TileMode tileMode}) => linear(
        "Passionate Bed",
        0.0,
        [stringToColor("#ff758c"), stringToColor("#ff7eb3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 81. Mountain Rock
  static Gradient mountainRock({required TileMode tileMode}) => linear(
        "Mountain Rock",
        0.0,
        [stringToColor("#868f96"), stringToColor("#596164")],
        [0.0, 1.0],
        tileMode,
      );

  /// 82. Desert Hump
  static Gradient desertHump({required TileMode tileMode}) => linear(
        "Desert Hump",
        -90.0,
        [stringToColor("#c79081"), stringToColor("#dfa579")],
        [0.0, 1.0],
        tileMode,
      );

  /// 83. Jungle Day
  static Gradient jungleDay({required TileMode tileMode}) => linear(
        "Jungle Day",
        -45.0,
        [stringToColor("#8baaaa"), stringToColor("#ae8b9c")],
        [0.0, 1.0],
        tileMode,
      );

  /// 84. Phoenix Start
  static Gradient phoenixStart({required TileMode tileMode}) => linear(
        "Phoenix Start",
        0.0,
        [stringToColor("#f83600"), stringToColor("#f9d423")],
        [0.0, 1.0],
        tileMode,
      );

  /// 85. October Silence
  static Gradient octoberSilence({required TileMode tileMode}) => linear(
        "October Silence",
        -110.0,
        [stringToColor("#b721ff"), stringToColor("#21d4fd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 86. Faraway River
  static Gradient farawayRiver({required TileMode tileMode}) => linear(
        "Faraway River",
        -110.0,
        [stringToColor("#6e45e2"), stringToColor("#88d3ce")],
        [0.0, 1.0],
        tileMode,
      );

  /// 87. Alchemist Lab
  static Gradient alchemistLab({required TileMode tileMode}) => linear(
        "Alchemist Lab",
        -110.0,
        [stringToColor("#d558c8"), stringToColor("#24d292")],
        [0.0, 1.0],
        tileMode,
      );

  /// 88. Over Sun
  static Gradient overSun({required TileMode tileMode}) => linear(
        "Over Sun",
        -30.0,
        [stringToColor("#abecd6"), stringToColor("#fbed96")],
        [0.0, 1.0],
        tileMode,
      );

  /// 89. Premium White
  static Gradient premiumWhite({required TileMode tileMode}) => linear(
        "Premium White",
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
  static Gradient marsParty({required TileMode tileMode}) => linear(
        "Mars Party",
        -90.0,
        [stringToColor("#5f72bd"), stringToColor("#9b23ea")],
        [0.0, 1.0],
        tileMode,
      );

  /// 91. Eternal Constance
  static Gradient eternalConstance({required TileMode tileMode}) => linear(
        "Eternal Constance",
        -90.0,
        [stringToColor("#09203f"), stringToColor("#537895")],
        [0.0, 1.0],
        tileMode,
      );

  /// 92. Japan Blush
  static Gradient japanBlush({required TileMode tileMode}) => linear(
        "Japan Blush",
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
  static Gradient smilingRain({required TileMode tileMode}) => linear(
        "Smiling Rain",
        -110.0,
        [stringToColor("#dcb0ed"), stringToColor("#99c99c")],
        [0.0, 1.0],
        tileMode,
      );

  /// 94. Cloudy Apple
  static Gradient cloudyApple({required TileMode tileMode}) => linear(
        "Cloudy Apple",
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
  static Gradient bigMango({required TileMode tileMode}) => linear(
        "Big Mango",
        -90.0,
        [stringToColor("#c71d6f"), stringToColor("#d09693")],
        [0.0, 1.0],
        tileMode,
      );

  /// 96. Healthy Water
  static Gradient healthyWater({required TileMode tileMode}) => linear(
        "Healthy Water",
        -30.0,
        [stringToColor("#96deda"), stringToColor("#50c9c3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 97. Amour Amour
  static Gradient amourAmour({required TileMode tileMode}) => linear(
        "Amour Amour",
        -90.0,
        [stringToColor("#f77062"), stringToColor("#fe5196")],
        [0.0, 1.0],
        tileMode,
      );

  /// 98. Risky Concrete
  static Gradient riskyConcrete({required TileMode tileMode}) => linear(
        "Risky Concrete",
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
  static Gradient strongStick({required TileMode tileMode}) => linear(
        "Strong Stick",
        0.0,
        [stringToColor("#a8caba"), stringToColor("#5d4157")],
        [0.0, 1.0],
        tileMode,
      );

  /// 100. Vicious Stance
  static Gradient viciousStance({required TileMode tileMode}) => linear(
        "Vicious Stance",
        -30.0,
        [stringToColor("#29323c"), stringToColor("#485563")],
        [0.0, 1.0],
        tileMode,
      );

  /// 101. Palo Alto
  static Gradient paloAlto({required TileMode tileMode}) => linear(
        "Palo Alto",
        -150.0,
        [stringToColor("#16a085"), stringToColor("#f4d03f")],
        [0.0, 1.0],
        tileMode,
      );

  /// 102. Happy Memories
  static Gradient happyMemories({required TileMode tileMode}) => linear(
        "Happy Memories",
        -150.0,
        [stringToColor("#ff5858"), stringToColor("#f09819")],
        [0.0, 1.0],
        tileMode,
      );

  /// 103. Midnight Bloom
  static Gradient midnightBloom({required TileMode tileMode}) => linear(
        "Midnight Bloom",
        -110.0,
        [stringToColor("#2b5876"), stringToColor("#4e4376")],
        [0.0, 1.0],
        tileMode,
      );

  /// 104. Crystalline
  static Gradient crystalline({required TileMode tileMode}) => linear(
        "Crystalline",
        -110.0,
        [stringToColor("#00cdac"), stringToColor("#8ddad5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 106. Party Bliss
  static Gradient partyBliss({required TileMode tileMode}) => linear(
        "Party Bliss",
        -90.0,
        [stringToColor("#4481eb"), stringToColor("#04befe")],
        [0.0, 1.0],
        tileMode,
      );

  /// 107. Confident Cloud
  static Gradient confidentCloud({required TileMode tileMode}) => linear(
        "Confident Cloud",
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
  static Gradient leCocktail({required TileMode tileMode}) => linear(
        "Le Cocktail",
        -45.0,
        [stringToColor("#874da2"), stringToColor("#c43a30")],
        [0.0, 1.0],
        tileMode,
      );

  /// 109. River City
  static Gradient riverCity({required TileMode tileMode}) => linear(
        "River City",
        -90.0,
        [stringToColor("#4481eb"), stringToColor("#04befe")],
        [0.0, 1.0],
        tileMode,
      );

  /// 110. Frozen Berry
  static Gradient frozenBerry({required TileMode tileMode}) => linear(
        "Frozen Berry",
        -90.0,
        [stringToColor("#e8198b"), stringToColor("#c7eafd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 112. Child Care
  static Gradient childCare({required TileMode tileMode}) => linear(
        "Child Care",
        -110.0,
        [stringToColor("#f794a4"), stringToColor("#fdd6bd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 113. Flying Lemon
  static Gradient flyingLemon({required TileMode tileMode}) => linear(
        "Flying Lemon",
        -30.0,
        [stringToColor("#64b3f4"), stringToColor("#c2e59c")],
        [0.0, 1.0],
        tileMode,
      );

  /// 114. New Retrowave
  static Gradient newRetrowave({required TileMode tileMode}) => linear(
        "New Retrowave",
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
  static Gradient hiddenJaguar({required TileMode tileMode}) => linear(
        "Hidden Jaguar",
        -90.0,
        [stringToColor("#0fd850"), stringToColor("#f9f047")],
        [0.0, 1.0],
        tileMode,
      );

  /// 116. Above The Sky
  static Gradient aboveTheSky({required TileMode tileMode}) => linear(
        "Above The Sky",
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
  static Gradient nega({required TileMode tileMode}) => linear(
        "Nega",
        -45.0,
        [stringToColor("#ee9ca7"), stringToColor("#ffdde1")],
        [0.0, 1.0],
        tileMode,
      );

  /// 118. Dense Water
  static Gradient denseWater({required TileMode tileMode}) => linear(
        "Dense Water",
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
  static Gradient seashore({required TileMode tileMode}) => linear(
        "Seashore",
        -90.0,
        [stringToColor("#209cff"), stringToColor("#68e0cf")],
        [0.0, 1.0],
        tileMode,
      );

  /// 121. Marble Wall
  static Gradient marbleWall({required TileMode tileMode}) => linear(
        "Marble Wall",
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
  static Gradient cheerfulCaramel({required TileMode tileMode}) => linear(
        "Cheerful Caramel",
        -90.0,
        [stringToColor("#e6b980"), stringToColor("#eacda3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 123. Night Sky
  static Gradient nightSky({required TileMode tileMode}) => linear(
        "Night Sky",
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
  static Gradient magicLake({required TileMode tileMode}) => linear(
        "Magic Lake",
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
  static Gradient youngGrass({required TileMode tileMode}) => linear(
        "Young Grass",
        -90.0,
        [stringToColor("#9be15d"), stringToColor("#00e3ae")],
        [0.0, 1.0],
        tileMode,
      );

  /// 126. Colorful Peach
  static Gradient colorfulPeach({required TileMode tileMode}) => linear(
        "Colorful Peach",
        0.0,
        [stringToColor("#ed6ea0"), stringToColor("#ec8c69")],
        [0.0, 1.0],
        tileMode,
      );

  /// 127. Gentle Care
  static Gradient gentleCare({required TileMode tileMode}) => linear(
        "Gentle Care",
        0.0,
        [stringToColor("#ffc3a0"), stringToColor("#ffafbd")],
        [0.0, 1.0],
        tileMode,
      );

  /// 128. Plum Bath
  static Gradient plumBath({required TileMode tileMode}) => linear(
        "Plum Bath",
        -90.0,
        [stringToColor("#cc208e"), stringToColor("#6713d2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 129. Happy Unicorn
  static Gradient happyUnicorn({required TileMode tileMode}) => linear(
        "Happy Unicorn",
        -90.0,
        [stringToColor("#b3ffab"), stringToColor("#12fff7")],
        [0.0, 1.0],
        tileMode,
      );

  /// 131. African Field
  static Gradient africanField({required TileMode tileMode}) => linear(
        "African Field",
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
  static Gradient solidStone({required TileMode tileMode}) => linear(
        "Solid Stone",
        0.0,
        [stringToColor("#243949"), stringToColor("#517fa4")],
        [0.0, 1.0],
        tileMode,
      );

  /// 133. Orange Juice
  static Gradient orangeJuice({required TileMode tileMode}) => linear(
        "Orange Juice",
        -110.0,
        [stringToColor("#fc6076"), stringToColor("#ff9a44")],
        [0.0, 1.0],
        tileMode,
      );

  /// 134. Glass Water
  static Gradient glassWater({required TileMode tileMode}) => linear(
        "Glass Water",
        -90.0,
        [stringToColor("#dfe9f3"), Colors.white],
        [0.0, 1.0],
        tileMode,
      );

  /// 136. North Miracle
  static Gradient northMiracle({required TileMode tileMode}) => linear(
        "North Miracle",
        0.0,
        [stringToColor("#00dbde"), stringToColor("#fc00ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 137. Fruit Blend
  static Gradient fruitBlend({required TileMode tileMode}) => linear(
        "Fruit Blend",
        0.0,
        [stringToColor("#f9d423"), stringToColor("#ff4e50")],
        [0.0, 1.0],
        tileMode,
      );

  /// 138. Millennium Pine
  static Gradient millenniumPine({required TileMode tileMode}) => linear(
        "Millennium Pine",
        -90.0,
        [stringToColor("#50cc7f"), stringToColor("#f5d100")],
        [0.0, 1.0],
        tileMode,
      );

  /// 139. High Flight
  static Gradient highFlight({required TileMode tileMode}) => linear(
        "High Flight",
        0.0,
        [stringToColor("#0acffe"), stringToColor("#495aff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 140. Mole Hall
  static Gradient moleHall({required TileMode tileMode}) => linear(
        "Mole Hall",
        -110.0,
        [stringToColor("#616161"), stringToColor("#9bc5c3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 142. Space Shift
  static Gradient spaceShift({required TileMode tileMode}) => linear(
        "Space Shift",
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
  static Gradient forestInei({required TileMode tileMode}) => linear(
        "Forest Inei",
        -90.0,
        [stringToColor("#df89b5"), stringToColor("#bfd9fe")],
        [0.0, 1.0],
        tileMode,
      );

  /// 144. Royal Garden
  static Gradient royalGarden({required TileMode tileMode}) => linear(
        "Royal Garden",
        0.0,
        [stringToColor("#ed6ea0"), stringToColor("#ec8c69")],
        [0.0, 1.0],
        tileMode,
      );

  /// 145. Rich Metal
  static Gradient richMetal({required TileMode tileMode}) => linear(
        "Rich Metal",
        0.0,
        [stringToColor("#d7d2cc"), stringToColor("#304352")],
        [0.0, 1.0],
        tileMode,
      );

  /// 146. Juicy Cake
  static Gradient juicyCake({required TileMode tileMode}) => linear(
        "Juicy Cake",
        -90.0,
        [stringToColor("#e14fad"), stringToColor("#f9d423")],
        [0.0, 1.0],
        tileMode,
      );

  /// 147. Smart Indigo
  static Gradient smartIndigo({required TileMode tileMode}) => linear(
        "Smart Indigo",
        -90.0,
        [stringToColor("#b224ef"), stringToColor("#7579ff")],
        [0.0, 1.0],
        tileMode,
      );

  /// 148. Sand Strike
  static Gradient sandStrike({required TileMode tileMode}) => linear(
        "Sand Strike",
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
  static Gradient norseBeauty({required TileMode tileMode}) => linear(
        "Norse Beauty",
        0.0,
        [stringToColor("#ec77ab"), stringToColor("#7873f5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 150. Aqua Guidance
  static Gradient aquaGuidance({required TileMode tileMode}) => linear(
        "Aqua Guidance",
        -90.0,
        [stringToColor("#007adf"), stringToColor("#00ecbc")],
        [0.0, 1.0],
        tileMode,
      );

  /// 151. Sun Veggie
  static Gradient sunVeggie({required TileMode tileMode}) => linear(
        "Sun Veggie",
        -315.0,
        [stringToColor("#20E2D7"), stringToColor("#F9FEA5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 152. Sea Lord
  static Gradient seaLord({required TileMode tileMode}) => linear(
        "Sea Lord",
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
  static Gradient blackSea({required TileMode tileMode}) => linear(
        "Black Sea",
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
  static Gradient grassShampoo({required TileMode tileMode}) => linear(
        "Grass Shampoo",
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
  static Gradient landingAircraft({required TileMode tileMode}) => linear(
        "Landing Aircraft",
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
  static Gradient witchDance({required TileMode tileMode}) => linear(
        "Witch Dance",
        -315.0,
        [stringToColor("#A8BFFF"), stringToColor("#884D80")],
        [0.0, 1.0],
        tileMode,
      );

  /// 157. Sleepless Night
  static Gradient sleeplessNight({required TileMode tileMode}) => linear(
        "Sleepless Night",
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
  static Gradient angelCare({required TileMode tileMode}) => linear(
        "Angel Care",
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
  static Gradient crystalRiver({required TileMode tileMode}) => linear(
        "Crystal River",
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
  static Gradient softLipstick({required TileMode tileMode}) => linear(
        "Soft Lipstick",
        -315.0,
        [stringToColor("#B6CEE8"), stringToColor("#F578DC")],
        [0.0, 1.0],
        tileMode,
      );

  /// 161. Salt Mountain
  static Gradient saltMountain({required TileMode tileMode}) => linear(
        "Salt Mountain",
        -315.0,
        [stringToColor("#FFFEFF"), stringToColor("#D7FFFE")],
        [0.0, 1.0],
        tileMode,
      );

  /// 162. Perfect White
  static Gradient perfectWhite({required TileMode tileMode}) => linear(
        "Perfect White",
        -315.0,
        [stringToColor("#E3FDF5"), stringToColor("#FFE6FA")],
        [0.0, 1.0],
        tileMode,
      );

  /// 163. Fresh Oasis
  static Gradient freshOasis({required TileMode tileMode}) => linear(
        "Fresh Oasis",
        -315.0,
        [stringToColor("#7DE2FC"), stringToColor("#B9B6E5")],
        [0.0, 1.0],
        tileMode,
      );

  /// 164. Strict November
  static Gradient strictNovember({required TileMode tileMode}) => linear(
        "Strict November",
        -315.0,
        [stringToColor("#CBBACC"), stringToColor("#2580B3")],
        [0.0, 1.0],
        tileMode,
      );

  /// 165. Morning Salad
  static Gradient morningSalad({required TileMode tileMode}) => linear(
        "Morning Salad",
        -315.0,
        [stringToColor("#B7F8DB"), stringToColor("#50A7C2")],
        [0.0, 1.0],
        tileMode,
      );

  /// 166. Deep Relief
  static Gradient deepRelief({required TileMode tileMode}) => linear(
        "Deep Relief",
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
  static Gradient seaStrike({required TileMode tileMode}) => linear(
        "Sea Strike",
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
  static Gradient nightCall({required TileMode tileMode}) => linear(
        "Night Call",
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
  static Gradient supremeSky({required TileMode tileMode}) => linear(
        "Supreme Sky",
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
  static Gradient lightBlue({required TileMode tileMode}) => linear(
        "Light Blue",
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
  static Gradient mindCrawl({required TileMode tileMode}) => linear(
        "Mind Crawl",
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
  static Gradient lilyMeadow({required TileMode tileMode}) => linear(
        "Lily Meadow",
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
  static Gradient sugarLollipop({required TileMode tileMode}) => linear(
        "Sugar Lollipop",
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
  static Gradient sweetDessert({required TileMode tileMode}) => linear(
        "Sweet Dessert",
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
  static Gradient magicRay({required TileMode tileMode}) => linear(
        "Magic Ray",
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
  static Gradient teenParty({required TileMode tileMode}) => linear(
        "Teen Party",
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
  static Gradient frozenHeat({required TileMode tileMode}) => linear(
        "Frozen Heat",
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
  static Gradient gagarinView({required TileMode tileMode}) => linear(
        "Gagarin View",
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
  static Gradient fabledSunset({required TileMode tileMode}) => linear(
        "Fabled Sunset",
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
  static Gradient perfectBlue({required TileMode tileMode}) => linear(
        "Perfect Blue",
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
