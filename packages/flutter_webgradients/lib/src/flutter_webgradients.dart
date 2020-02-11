import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_webgradients/src/hex.dart';
import 'package:flutter_webgradients/src/create_linear_gradient.dart';

class FlutterWebGradient {
  static LinearGradient linear(
          String name, double angle, List<Color> colors, List<double> stops) =>
      create(angle, colors, stops);

  /// 1. Warm Flame
  static Gradient warmFlame() => linear("Warm Flame", -45.0, [
        stringToColor("#ff9a9e"),
        stringToColor("#fad0c4"),
        stringToColor("#fad0c4")
      ], [
        0.0,
        0.99,
        1.0
      ]);

  /// 2. Night Fade
  static Gradient nightFade() => linear("Night Fade", -90.0,
      [stringToColor("#a18cd1"), stringToColor("#fbc2eb")], [0.0, 1.0]);

  /// 3. Spring Warmth
  static Gradient springWarmth() => linear("Spring Warmth", -90.0, [
        stringToColor("#fad0c4"),
        stringToColor("#fad0c4"),
        stringToColor("#ffd1ff")
      ], [
        0.0,
        0.01,
        1.0
      ]);

  /// 4. Juicy Peach
  static Gradient juicyPeach() => linear("Juicy Peach", 0.0,
      [stringToColor("#ffecd2"), stringToColor("#fcb69f")], [0.0, 1.0]);

  /// 5. Young Passion
  static Gradient youngPassion() => linear("Young Passion", 0.0, [
        stringToColor("#ff8177"),
        stringToColor("#ff867a"),
        stringToColor("#ff8c7f"),
        stringToColor("#f99185"),
        stringToColor("#cf556c"),
        stringToColor("#b12a5b")
      ], [
        0.0,
        0.0,
        0.21,
        0.52,
        0.78,
        1.0
      ]);

  /// 6. Lady Lips
  static Gradient ladyLips() => linear("Lady Lips", -90.0, [
        stringToColor("#ff9a9e"),
        stringToColor("#fecfef"),
        stringToColor("#fecfef")
      ], [
        0.0,
        0.99,
        1.0
      ]);

  /// 7. Sunny Morning
  static Gradient sunnyMorning() => linear("Sunny Morning", 30.0,
      [stringToColor("#f6d365"), stringToColor("#fda085")], [0.0, 1.0]);

  /// 8. Rainy Ashville
  static Gradient rainyAshville() => linear("Rainy Ashville", -90.0,
      [stringToColor("#fbc2eb"), stringToColor("#a6c1ee")], [0.0, 1.0]);

  /// 9. Frozen Dreams
  static Gradient frozenDreams() => linear("Frozen Dreams", -90.0, [
        stringToColor("#fdcbf1"),
        stringToColor("#fdcbf1"),
        stringToColor("#e6dee9")
      ], [
        0.0,
        0.01,
        1.0
      ]);

  /// 10. Winter Neva
  static Gradient winterNeva() => linear("Winter Neva", 30.0,
      [stringToColor("#a1c4fd"), stringToColor("#c2e9fb")], [0.0, 1.0]);

  /// 11. Dusty Grass
  static Gradient dustyGrass() => linear("Dusty Grass", 30.0,
      [stringToColor("#d4fc79"), stringToColor("#96e6a1")], [0.0, 1.0]);

  /// 12. Tempting Azure
  static Gradient temptingAzure() => linear("Tempting Azure", 30.0,
      [stringToColor("#84fab0"), stringToColor("#8fd3f4")], [0.0, 1.0]);

  /// 13. Heavy Rain
  static Gradient heavyRain() => linear("Heavy Rain", -90.0,
      [stringToColor("#cfd9df"), stringToColor("#e2ebf0")], [0.0, 1.0]);

  /// 14. Amy Crisp
  static Gradient amyCrisp() => linear("Amy Crisp", 30.0,
      [stringToColor("#a6c0fe"), stringToColor("#f68084")], [0.0, 1.0]);

  /// 15. Mean Fruit
  static Gradient meanFruit() => linear("Mean Fruit", 30.0,
      [stringToColor("#fccb90"), stringToColor("#d57eeb")], [0.0, 1.0]);

  /// 16. Deep Blue
  static Gradient deepBlue() => linear("Deep Blue", 30.0,
      [stringToColor("#e0c3fc"), stringToColor("#8ec5fc")], [0.0, 1.0]);

  /// 17. Ripe Malinka
  static Gradient ripeMalinka() => linear("Ripe Malinka", 30.0,
      [stringToColor("#f093fb"), stringToColor("#f5576c")], [0.0, 1.0]);

  /// 18. Cloudy Knoxville
  static Gradient cloudyKnoxville() => linear("Cloudy Knoxville", 30.0,
      [stringToColor("#fdfbfb"), stringToColor("#ebedee")], [0.0, 1.0]);

  /// 19. Malibu Beach
  static Gradient malibuBeach() => linear("Malibu Beach", 0.0,
      [stringToColor("#4facfe"), stringToColor("#00f2fe")], [0.0, 1.0]);

  /// 20. New Life
  static Gradient newLife() => linear("New Life", 0.0,
      [stringToColor("#43e97b"), stringToColor("#38f9d7")], [0.0, 1.0]);

  /// 21. True Sunset
  static Gradient trueSunset() => linear("True Sunset", 0.0,
      [stringToColor("#fa709a"), stringToColor("#fee140")], [0.0, 1.0]);

  /// 22. Morpheus Den
  static Gradient morpheusDen() => linear("Morpheus Den", -90.0,
      [stringToColor("#30cfd0"), stringToColor("#330867")], [0.0, 1.0]);

  /// 23. Rare Wind
  static Gradient rareWind() => linear("Rare Wind", -90.0,
      [stringToColor("#a8edea"), stringToColor("#fed6e3")], [0.0, 1.0]);

  /// 24. Near Moon
  static Gradient nearMoon() => linear("Near Moon", -90.0,
      [stringToColor("#5ee7df"), stringToColor("#b490ca")], [0.0, 1.0]);

  /// 25. Wild Apple
  static Gradient wildApple() => linear("Wild Apple", -90.0,
      [stringToColor("#d299c2"), stringToColor("#fef9d7")], [0.0, 1.0]);

  /// 26. Saint Petersburg
  static Gradient saintPetersburg() => linear("Saint Petersburg", 45.0,
      [stringToColor("#f5f7fa"), stringToColor("#c3cfe2")], [0.0, 1.0]);

  /// 28. Plum Plate
  static Gradient plumPlate() => linear("Plum Plate", 45.0,
      [stringToColor("#667eea"), stringToColor("#764ba2")], [0.0, 1.0]);

  /// 29. Everlasting Sky
  static Gradient everlastingSky() => linear("Everlasting Sky", 45.0,
      [stringToColor("#fdfcfb"), stringToColor("#e2d1c3")], [0.0, 1.0]);

  /// 30. Happy Fisher
  static Gradient happyFisher() => linear("Happy Fisher", 30.0,
      [stringToColor("#89f7fe"), stringToColor("#66a6ff")], [0.0, 1.0]);

  /// 31. Blessing
  static Gradient blessing() => linear("Blessing", -90.0,
      [stringToColor("#fddb92"), stringToColor("#d1fdff")], [0.0, 1.0]);

  /// 32. Sharpeye Eagle
  static Gradient sharpeyeEagle() => linear("Sharpeye Eagle", -90.0,
      [stringToColor("#9890e3"), stringToColor("#b1f4cf")], [0.0, 1.0]);

  /// 33. Ladoga Bottom
  static Gradient ladogaBottom() => linear("Ladoga Bottom", -90.0,
      [stringToColor("#ebc0fd"), stringToColor("#d9ded8")], [0.0, 1.0]);

  /// 34. Lemon Gate
  static Gradient lemonGate() => linear("Lemon Gate", -90.0,
      [stringToColor("#96fbc4"), stringToColor("#f9f586")], [0.0, 1.0]);

  /// 35. Itmeo Branding
  static Gradient itmeoBranding() => linear("Itmeo Branding", 90.0,
      [stringToColor("#2af598"), stringToColor("#009efd")], [0.0, 1.0]);

  /// 36. Zeus Miracle
  static Gradient zeusMiracle() => linear("Zeus Miracle", -90.0,
      [stringToColor("#cd9cf2"), stringToColor("#f6f3ff")], [0.0, 1.0]);

  /// 37. Old Hat
  static Gradient oldHat() => linear("Old Hat", 0.0, [
        stringToColor("#e4afcb"),
        stringToColor("#b8cbb8"),
        stringToColor("#b8cbb8"),
        stringToColor("#e2c58b"),
        stringToColor("#c2ce9c"),
        stringToColor("#7edbdc")
      ], [
        0.0,
        0.0,
        0.0,
        0.3,
        0.64,
        1.0
      ]);

  /// 38. Star Wine
  static Gradient starWine() => linear("Star Wine", 0.0, [
        stringToColor("#b8cbb8"),
        stringToColor("#b8cbb8"),
        stringToColor("#b465da"),
        stringToColor("#cf6cc9"),
        stringToColor("#ee609c"),
        stringToColor("#ee609c")
      ], [
        0.0,
        0.0,
        0.0,
        0.33,
        0.66,
        1.0
      ]);

  /// 39. Deep Blue
  static Gradient deepBlue2() => linear("Deep Blue", 0.0,
      [stringToColor("#6a11cb"), stringToColor("#2575fc")], [0.0, 1.0]);

  /// 41. Happy Acid
  static Gradient happyAcid() => linear("Happy Acid", -90.0,
      [stringToColor("#37ecba"), stringToColor("#72afd3")], [0.0, 1.0]);

  /// 42. Awesome Pine
  static Gradient awesomePine() => linear("Awesome Pine", -90.0,
      [stringToColor("#ebbba7"), stringToColor("#cfc7f8")], [0.0, 1.0]);

  /// 43. New York
  static Gradient newYork() => linear("New York", -90.0,
      [stringToColor("#fff1eb"), stringToColor("#ace0f9")], [0.0, 1.0]);

  /// 44. Shy Rainbow
  static Gradient shyRainbow() => linear("Shy Rainbow", 0.0, [
        stringToColor("#eea2a2"),
        stringToColor("#bbc1bf"),
        stringToColor("#57c6e1"),
        stringToColor("#b49fda"),
        stringToColor("#7ac5d8")
      ], [
        0.0,
        0.19,
        0.42,
        0.79,
        1.0
      ]);

  /// 46. Mixed Hopes
  static Gradient mixedHopes() => linear("Mixed Hopes", -90.0,
      [stringToColor("#c471f5"), stringToColor("#fa71cd")], [0.0, 1.0]);

  /// 47. Fly High
  static Gradient flyHigh() => linear("Fly High", -90.0,
      [stringToColor("#48c6ef"), stringToColor("#6f86d6")], [0.0, 1.0]);

  /// 48. Strong Bliss
  static Gradient strongBliss() => linear("Strong Bliss", 0.0, [
        stringToColor("#f78ca0"),
        stringToColor("#f9748f"),
        stringToColor("#fd868c"),
        stringToColor("#fe9a8b")
      ], [
        0.0,
        0.19,
        0.6,
        1.0
      ]);

  /// 49. Fresh Milk
  static Gradient freshMilk() => linear("Fresh Milk", -90.0,
      [stringToColor("#feada6"), stringToColor("#f5efef")], [0.0, 1.0]);

  /// 50. Snow Again
  static Gradient snowAgain() => linear("Snow Again", -90.0,
      [stringToColor("#e6e9f0"), stringToColor("#eef1f5")], [0.0, 1.0]);

  /// 51. February Ink
  static Gradient februaryInk() => linear("February Ink", -90.0,
      [stringToColor("#accbee"), stringToColor("#e7f0fd")], [0.0, 1.0]);

  /// 52. Kind Steel
  static Gradient kindSteel() => linear("Kind Steel", -110.0,
      [stringToColor("#e9defa"), stringToColor("#fbfcdb")], [0.0, 1.0]);

  /// 53. Soft Grass
  static Gradient softGrass() => linear("Soft Grass", -90.0,
      [stringToColor("#c1dfc4"), stringToColor("#deecdd")], [0.0, 1.0]);

  /// 54. Grown Early
  static Gradient grownEarly() => linear("Grown Early", -90.0,
      [stringToColor("#0ba360"), stringToColor("#3cba92")], [0.0, 1.0]);

  /// 55. Sharp Blues
  static Gradient sharpBlues() => linear("Sharp Blues", -90.0,
      [stringToColor("#00c6fb"), stringToColor("#005bea")], [0.0, 1.0]);

  /// 56. Shady Water
  static Gradient shadyWater() => linear("Shady Water", 0.0,
      [stringToColor("#74ebd5"), stringToColor("#9face6")], [0.0, 1.0]);

  /// 57. Dirty Beauty
  static Gradient dirtyBeauty() => linear("Dirty Beauty", -90.0,
      [stringToColor("#6a85b6"), stringToColor("#bac8e0")], [0.0, 1.0]);

  /// 58. Great Whale
  static Gradient greatWhale() => linear("Great Whale", -90.0,
      [stringToColor("#a3bded"), stringToColor("#6991c7")], [0.0, 1.0]);

  /// 59. Teen Notebook
  static Gradient teenNotebook() => linear("Teen Notebook", -90.0,
      [stringToColor("#9795f0"), stringToColor("#fbc8d4")], [0.0, 1.0]);

  /// 60. Polite Rumors
  static Gradient politeRumors() => linear("Polite Rumors", -90.0, [
        stringToColor("#a7a6cb"),
        stringToColor("#8989ba"),
        stringToColor("#8989ba")
      ], [
        0.0,
        0.52,
        1.0
      ]);

  /// 61. Sweet Period
  static Gradient sweetPeriod() => linear("Sweet Period", -90.0, [
        stringToColor("#3f51b1"),
        stringToColor("#5a55ae"),
        stringToColor("#7b5fac"),
        stringToColor("#8f6aae"),
        stringToColor("#a86aa4"),
        stringToColor("#cc6b8e"),
        stringToColor("#f18271"),
        stringToColor("#f3a469"),
        stringToColor("#f7c978")
      ], [
        0.0,
        0.13,
        0.25,
        0.38,
        0.5,
        0.62,
        0.75,
        0.87,
        1.0
      ]);

  /// 62. Wide Matrix
  static Gradient wideMatrix() => linear("Wide Matrix", -90.0, [
        stringToColor("#fcc5e4"),
        stringToColor("#fda34b"),
        stringToColor("#ff7882"),
        stringToColor("#c8699e"),
        stringToColor("#7046aa"),
        stringToColor("#0c1db8"),
        stringToColor("#020f75")
      ], [
        0.0,
        0.15,
        0.35,
        0.52,
        0.71,
        0.87,
        1.0
      ]);

  /// 63. Soft Cherish
  static Gradient softCherish() => linear("Soft Cherish", -90.0, [
        stringToColor("#dbdcd7"),
        stringToColor("#dddcd7"),
        stringToColor("#e2c9cc"),
        stringToColor("#e7627d"),
        stringToColor("#b8235a"),
        stringToColor("#801357"),
        stringToColor("#3d1635"),
        stringToColor("#1c1a27")
      ], [
        0.0,
        0.24,
        0.3,
        0.46,
        0.59,
        0.71,
        0.84,
        1.0
      ]);

  /// 64. Red Salvation
  static Gradient redSalvation() => linear("Red Salvation", -90.0,
      [stringToColor("#f43b47"), stringToColor("#453a94")], [0.0, 1.0]);

  /// 65. Burning Spring
  static Gradient burningSpring() => linear("Burning Spring", -90.0, [
        stringToColor("#4fb576"),
        stringToColor("#44c489"),
        stringToColor("#28a9ae"),
        stringToColor("#28a2b7"),
        stringToColor("#4c7788"),
        stringToColor("#6c4f63"),
        stringToColor("#432c39")
      ], [
        0.0,
        0.3,
        0.46,
        0.59,
        0.71,
        0.86,
        1.0
      ]);

  /// 66. Night Party
  static Gradient nightParty() => linear("Night Party", -90.0,
      [stringToColor("#0250c5"), stringToColor("#d43f8d")], [0.0, 1.0]);

  /// 67. Sky Glider
  static Gradient skyGlider() => linear("Sky Glider", -90.0,
      [stringToColor("#88d3ce"), stringToColor("#6e45e2")], [0.0, 1.0]);

  /// 68. Heaven Peach
  static Gradient heavenPeach() => linear("Heaven Peach", -90.0,
      [stringToColor("#d9afd9"), stringToColor("#97d9e1")], [0.0, 1.0]);

  /// 69. Purple Division
  static Gradient purpleDivision() => linear("Purple Division", -90.0,
      [stringToColor("#7028e4"), stringToColor("#e5b2ca")], [0.0, 1.0]);

  /// 70. Aqua Splash
  static Gradient aquaSplash() => linear("Aqua Splash", -75.0,
      [stringToColor("#13547a"), stringToColor("#80d0c7")], [0.0, 1.0]);

  /// 72. Spiky Naga
  static Gradient spikyNaga() => linear("Spiky Naga", -90.0, [
        stringToColor("#505285"),
        stringToColor("#585e92"),
        stringToColor("#65689f"),
        stringToColor("#7474b0"),
        stringToColor("#7e7ebb"),
        stringToColor("#8389c7"),
        stringToColor("#9795d4"),
        stringToColor("#a2a1dc"),
        stringToColor("#b5aee4")
      ], [
        0.0,
        0.12,
        0.25,
        0.37,
        0.5,
        0.62,
        0.75,
        0.87,
        1.0
      ]);

  /// 73. Love Kiss
  static Gradient loveKiss() => linear("Love Kiss", -90.0,
      [stringToColor("#ff0844"), stringToColor("#ffb199")], [0.0, 1.0]);

  /// 75. Clean Mirror
  static Gradient cleanMirror() => linear("Clean Mirror", -45.0,
      [stringToColor("#93a5cf"), stringToColor("#e4efe9")], [0.0, 1.0]);

  /// 76. Premium Dark
  static Gradient premiumDark() => linear("Premium Dark", 0.0,
      [stringToColor("#434343"), Colors.black], [0.0, 1.0]);

  /// 77. Cold Evening
  static Gradient coldEvening() => linear("Cold Evening", -90.0, [
        stringToColor("#0c3483"),
        stringToColor("#a2b6df"),
        stringToColor("#6b8cce"),
        stringToColor("#a2b6df")
      ], [
        0.0,
        1.0,
        1.0,
        1.0
      ]);

  /// 78. Cochiti Lake
  static Gradient cochitiLake() => linear("Cochiti Lake", -45.0,
      [stringToColor("#93a5cf"), stringToColor("#e4efe9")], [0.0, 1.0]);

  /// 79. Summer Games
  static Gradient summerGames() => linear("Summer Games", 0.0,
      [stringToColor("#92fe9d"), stringToColor("#00c9ff")], [0.0, 1.0]);

  /// 80. Passionate Bed
  static Gradient passionateBed() => linear("Passionate Bed", 0.0,
      [stringToColor("#ff758c"), stringToColor("#ff7eb3")], [0.0, 1.0]);

  /// 81. Mountain Rock
  static Gradient mountainRock() => linear("Mountain Rock", 0.0,
      [stringToColor("#868f96"), stringToColor("#596164")], [0.0, 1.0]);

  /// 82. Desert Hump
  static Gradient desertHump() => linear("Desert Hump", -90.0,
      [stringToColor("#c79081"), stringToColor("#dfa579")], [0.0, 1.0]);

  /// 83. Jungle Day
  static Gradient jungleDay() => linear("Jungle Day", -45.0,
      [stringToColor("#8baaaa"), stringToColor("#ae8b9c")], [0.0, 1.0]);

  /// 84. Phoenix Start
  static Gradient phoenixStart() => linear("Phoenix Start", 0.0,
      [stringToColor("#f83600"), stringToColor("#f9d423")], [0.0, 1.0]);

  /// 85. October Silence
  static Gradient octoberSilence() => linear("October Silence", -110.0,
      [stringToColor("#b721ff"), stringToColor("#21d4fd")], [0.0, 1.0]);

  /// 86. Faraway River
  static Gradient farawayRiver() => linear("Faraway River", -110.0,
      [stringToColor("#6e45e2"), stringToColor("#88d3ce")], [0.0, 1.0]);

  /// 87. Alchemist Lab
  static Gradient alchemistLab() => linear("Alchemist Lab", -110.0,
      [stringToColor("#d558c8"), stringToColor("#24d292")], [0.0, 1.0]);

  /// 88. Over Sun
  static Gradient overSun() => linear("Over Sun", -30.0,
      [stringToColor("#abecd6"), stringToColor("#fbed96")], [0.0, 1.0]);

  /// 89. Premium White
  static Gradient premiumWhite() => linear("Premium White", -90.0, [
        stringToColor("#d5d4d0"),
        stringToColor("#d5d4d0"),
        stringToColor("#eeeeec"),
        stringToColor("#efeeec"),
        stringToColor("#e9e9e7")
      ], [
        0.0,
        0.01,
        0.31,
        0.75,
        1.0
      ]);

  /// 90. Mars Party
  static Gradient marsParty() => linear("Mars Party", -90.0,
      [stringToColor("#5f72bd"), stringToColor("#9b23ea")], [0.0, 1.0]);

  /// 91. Eternal Constance
  static Gradient eternalConstance() => linear("Eternal Constance", -90.0,
      [stringToColor("#09203f"), stringToColor("#537895")], [0.0, 1.0]);

  /// 92. Japan Blush
  static Gradient japanBlush() => linear("Japan Blush", -110.0, [
        stringToColor("#ddd6f3"),
        stringToColor("#faaca8"),
        stringToColor("#faaca8")
      ], [
        0.0,
        1.0,
        1.0
      ]);

  /// 93. Smiling Rain
  static Gradient smilingRain() => linear("Smiling Rain", -110.0,
      [stringToColor("#dcb0ed"), stringToColor("#99c99c")], [0.0, 1.0]);

  /// 94. Cloudy Apple
  static Gradient cloudyApple() => linear("Cloudy Apple", -90.0, [
        stringToColor("#f3e7e9"),
        stringToColor("#e3eeff"),
        stringToColor("#e3eeff")
      ], [
        0.0,
        0.99,
        1.0
      ]);

  /// 95. Big Mango
  static Gradient bigMango() => linear("Big Mango", -90.0,
      [stringToColor("#c71d6f"), stringToColor("#d09693")], [0.0, 1.0]);

  /// 96. Healthy Water
  static Gradient healthyWater() => linear("Healthy Water", -30.0,
      [stringToColor("#96deda"), stringToColor("#50c9c3")], [0.0, 1.0]);

  /// 97. Amour Amour
  static Gradient amourAmour() => linear("Amour Amour", -90.0,
      [stringToColor("#f77062"), stringToColor("#fe5196")], [0.0, 1.0]);

  /// 98. Risky Concrete
  static Gradient riskyConcrete() => linear("Risky Concrete", -90.0, [
        stringToColor("#c4c5c7"),
        stringToColor("#dcdddf"),
        stringToColor("#ebebeb")
      ], [
        0.0,
        0.52,
        1.0
      ]);

  /// 99. Strong Stick
  static Gradient strongStick() => linear("Strong Stick", 0.0,
      [stringToColor("#a8caba"), stringToColor("#5d4157")], [0.0, 1.0]);

  /// 100. Vicious Stance
  static Gradient viciousStance() => linear("Vicious Stance", -30.0,
      [stringToColor("#29323c"), stringToColor("#485563")], [0.0, 1.0]);

  /// 101. Palo Alto
  static Gradient paloAlto() => linear("Palo Alto", -150.0,
      [stringToColor("#16a085"), stringToColor("#f4d03f")], [0.0, 1.0]);

  /// 102. Happy Memories
  static Gradient happyMemories() => linear("Happy Memories", -150.0,
      [stringToColor("#ff5858"), stringToColor("#f09819")], [0.0, 1.0]);

  /// 103. Midnight Bloom
  static Gradient midnightBloom() => linear("Midnight Bloom", -110.0,
      [stringToColor("#2b5876"), stringToColor("#4e4376")], [0.0, 1.0]);

  /// 104. Crystalline
  static Gradient crystalline() => linear("Crystalline", -110.0,
      [stringToColor("#00cdac"), stringToColor("#8ddad5")], [0.0, 1.0]);

  /// 106. Party Bliss
  static Gradient partyBliss() => linear("Party Bliss", -90.0,
      [stringToColor("#4481eb"), stringToColor("#04befe")], [0.0, 1.0]);

  /// 107. Confident Cloud
  static Gradient confidentCloud() => linear("Confident Cloud", -90.0, [
        stringToColor("#dad4ec"),
        stringToColor("#dad4ec"),
        stringToColor("#f3e7e9")
      ], [
        0.0,
        0.01,
        1.0
      ]);

  /// 108. Le Cocktail
  static Gradient leCocktail() => linear("Le Cocktail", -45.0,
      [stringToColor("#874da2"), stringToColor("#c43a30")], [0.0, 1.0]);

  /// 109. River City
  static Gradient riverCity() => linear("River City", -90.0,
      [stringToColor("#4481eb"), stringToColor("#04befe")], [0.0, 1.0]);

  /// 110. Frozen Berry
  static Gradient frozenBerry() => linear("Frozen Berry", -90.0,
      [stringToColor("#e8198b"), stringToColor("#c7eafd")], [0.0, 1.0]);

  /// 112. Child Care
  static Gradient childCare() => linear("Child Care", -110.0,
      [stringToColor("#f794a4"), stringToColor("#fdd6bd")], [0.0, 1.0]);

  /// 113. Flying Lemon
  static Gradient flyingLemon() => linear("Flying Lemon", -30.0,
      [stringToColor("#64b3f4"), stringToColor("#c2e59c")], [0.0, 1.0]);

  /// 114. New Retrowave
  static Gradient newRetrowave() => linear("New Retrowave", -90.0, [
        stringToColor("#3b41c5"),
        stringToColor("#a981bb"),
        stringToColor("#ffc8a9")
      ], [
        0.0,
        0.49,
        1.0
      ]);

  /// 115. Hidden Jaguar
  static Gradient hiddenJaguar() => linear("Hidden Jaguar", -90.0,
      [stringToColor("#0fd850"), stringToColor("#f9f047")], [0.0, 1.0]);

  /// 116. Above The Sky
  static Gradient aboveTheSky() => linear("Above The Sky", -90.0, [
        Colors.grey[300],
        Colors.grey[300],
        stringToColor("#e0e0e0"),
        stringToColor("#efefef"),
        stringToColor("#d9d9d9"),
        stringToColor("#bcbcbc")
      ], [
        0.0,
        0.01,
        0.26,
        0.48,
        0.75,
        1.0
      ]);

  /// 117. Nega
  static Gradient nega() => linear("Nega", -45.0,
      [stringToColor("#ee9ca7"), stringToColor("#ffdde1")], [0.0, 1.0]);

  /// 118. Dense Water
  static Gradient denseWater() => linear("Dense Water", 0.0, [
        stringToColor("#3ab5b0"),
        stringToColor("#3d99be"),
        stringToColor("#56317a")
      ], [
        0.0,
        0.31,
        1.0
      ]);

  /// 120. Seashore
  static Gradient seashore() => linear("Seashore", -90.0,
      [stringToColor("#209cff"), stringToColor("#68e0cf")], [0.0, 1.0]);

  /// 121. Marble Wall
  static Gradient marbleWall() => linear("Marble Wall", -90.0, [
        stringToColor("#bdc2e8"),
        stringToColor("#bdc2e8"),
        stringToColor("#e6dee9")
      ], [
        0.0,
        0.01,
        1.0
      ]);

  /// 122. Cheerful Caramel
  static Gradient cheerfulCaramel() => linear("Cheerful Caramel", -90.0,
      [stringToColor("#e6b980"), stringToColor("#eacda3")], [0.0, 1.0]);

  /// 123. Night Sky
  static Gradient nightSky() => linear("Night Sky", -90.0, [
        stringToColor("#1e3c72"),
        stringToColor("#1e3c72"),
        stringToColor("#2a5298")
      ], [
        0.0,
        0.01,
        1.0
      ]);

  /// 124. Magic Lake
  static Gradient magicLake() => linear("Magic Lake", -90.0, [
        stringToColor("#d5dee7"),
        stringToColor("#ffafbd"),
        stringToColor("#c9ffbf")
      ], [
        0.0,
        0.0,
        1.0
      ]);

  /// 125. Young Grass
  static Gradient youngGrass() => linear("Young Grass", -90.0,
      [stringToColor("#9be15d"), stringToColor("#00e3ae")], [0.0, 1.0]);

  /// 126. Colorful Peach
  static Gradient colorfulPeach() => linear("Colorful Peach", 0.0,
      [stringToColor("#ed6ea0"), stringToColor("#ec8c69")], [0.0, 1.0]);

  /// 127. Gentle Care
  static Gradient gentleCare() => linear("Gentle Care", 0.0,
      [stringToColor("#ffc3a0"), stringToColor("#ffafbd")], [0.0, 1.0]);

  /// 128. Plum Bath
  static Gradient plumBath() => linear("Plum Bath", -90.0,
      [stringToColor("#cc208e"), stringToColor("#6713d2")], [0.0, 1.0]);

  /// 129. Happy Unicorn
  static Gradient happyUnicorn() => linear("Happy Unicorn", -90.0,
      [stringToColor("#b3ffab"), stringToColor("#12fff7")], [0.0, 1.0]);

  /// 131. African Field
  static Gradient africanField() => linear("African Field", -90.0, [
        stringToColor("#65bd60"),
        stringToColor("#5ac1a8"),
        stringToColor("#3ec6ed"),
        stringToColor("#b7ddb7"),
        stringToColor("#fef381")
      ], [
        0.0,
        0.25,
        0.5,
        0.75,
        1.0
      ]);

  /// 132. Solid Stone
  static Gradient solidStone() => linear("Solid Stone", 0.0,
      [stringToColor("#243949"), stringToColor("#517fa4")], [0.0, 1.0]);

  /// 133. Orange Juice
  static Gradient orangeJuice() => linear("Orange Juice", -110.0,
      [stringToColor("#fc6076"), stringToColor("#ff9a44")], [0.0, 1.0]);

  /// 134. Glass Water
  static Gradient glassWater() => linear("Glass Water", -90.0,
      [stringToColor("#dfe9f3"), Colors.white], [0.0, 1.0]);

  /// 136. North Miracle
  static Gradient northMiracle() => linear("North Miracle", 0.0,
      [stringToColor("#00dbde"), stringToColor("#fc00ff")], [0.0, 1.0]);

  /// 137. Fruit Blend
  static Gradient fruitBlend() => linear("Fruit Blend", 0.0,
      [stringToColor("#f9d423"), stringToColor("#ff4e50")], [0.0, 1.0]);

  /// 138. Millennium Pine
  static Gradient millenniumPine() => linear("Millennium Pine", -90.0,
      [stringToColor("#50cc7f"), stringToColor("#f5d100")], [0.0, 1.0]);

  /// 139. High Flight
  static Gradient highFlight() => linear("High Flight", 0.0,
      [stringToColor("#0acffe"), stringToColor("#495aff")], [0.0, 1.0]);

  /// 140. Mole Hall
  static Gradient moleHall() => linear("Mole Hall", -110.0,
      [stringToColor("#616161"), stringToColor("#9bc5c3")], [0.0, 1.0]);

  /// 142. Space Shift
  static Gradient spaceShift() => linear("Space Shift", -30.0, [
        stringToColor("#3d3393"),
        stringToColor("#2b76b9"),
        stringToColor("#2cacd1"),
        stringToColor("#35eb93")
      ], [
        0.0,
        0.37,
        0.65,
        1.0
      ]);

  /// 143. Forest Inei
  static Gradient forestInei() => linear("Forest Inei", -90.0,
      [stringToColor("#df89b5"), stringToColor("#bfd9fe")], [0.0, 1.0]);

  /// 144. Royal Garden
  static Gradient royalGarden() => linear("Royal Garden", 0.0,
      [stringToColor("#ed6ea0"), stringToColor("#ec8c69")], [0.0, 1.0]);

  /// 145. Rich Metal
  static Gradient richMetal() => linear("Rich Metal", 0.0,
      [stringToColor("#d7d2cc"), stringToColor("#304352")], [0.0, 1.0]);

  /// 146. Juicy Cake
  static Gradient juicyCake() => linear("Juicy Cake", -90.0,
      [stringToColor("#e14fad"), stringToColor("#f9d423")], [0.0, 1.0]);

  /// 147. Smart Indigo
  static Gradient smartIndigo() => linear("Smart Indigo", -90.0,
      [stringToColor("#b224ef"), stringToColor("#7579ff")], [0.0, 1.0]);

  /// 148. Sand Strike
  static Gradient sandStrike() => linear("Sand Strike", 0.0, [
        stringToColor("#c1c161"),
        stringToColor("#c1c161"),
        stringToColor("#d4d4b1")
      ], [
        0.0,
        0.0,
        1.0
      ]);

  /// 149. Norse Beauty
  static Gradient norseBeauty() => linear("Norse Beauty", 0.0,
      [stringToColor("#ec77ab"), stringToColor("#7873f5")], [0.0, 1.0]);

  /// 150. Aqua Guidance
  static Gradient aquaGuidance() => linear("Aqua Guidance", -90.0,
      [stringToColor("#007adf"), stringToColor("#00ecbc")], [0.0, 1.0]);

  /// 151. Sun Veggie
  static Gradient sunVeggie() => linear("Sun Veggie", -315.0,
      [stringToColor("#20E2D7"), stringToColor("#F9FEA5")], [0.0, 1.0]);

  /// 152. Sea Lord
  static Gradient seaLord() => linear("Sea Lord", -315.0, [
        stringToColor("#2CD8D5"),
        stringToColor("#C5C1FF"),
        stringToColor("#FFBAC3")
      ], [
        0.0,
        0.56,
        1.0
      ]);

  /// 153. Black Sea
  static Gradient blackSea() => linear("Black Sea", -315.0, [
        stringToColor("#2CD8D5"),
        stringToColor("#6B8DD6"),
        stringToColor("#8E37D7")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 154. Grass Shampoo
  static Gradient grassShampoo() => linear("Grass Shampoo", -315.0, [
        stringToColor("#DFFFCD"),
        stringToColor("#90F9C4"),
        stringToColor("#39F3BB")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 155. Landing Aircraft
  static Gradient landingAircraft() => linear("Landing Aircraft", -315.0, [
        stringToColor("#5D9FFF"),
        stringToColor("#B8DCFF"),
        stringToColor("#6BBBFF")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 156. Witch Dance
  static Gradient witchDance() => linear("Witch Dance", -315.0,
      [stringToColor("#A8BFFF"), stringToColor("#884D80")], [0.0, 1.0]);

  /// 157. Sleepless Night
  static Gradient sleeplessNight() => linear("Sleepless Night", -315.0, [
        stringToColor("#5271C4"),
        stringToColor("#B19FFF"),
        stringToColor("#ECA1FE")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 158. Angel Care
  static Gradient angelCare() => linear("Angel Care", -315.0, [
        stringToColor("#FFE29F"),
        stringToColor("#FFA99F"),
        stringToColor("#FF719A")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 159. Crystal River
  static Gradient crystalRiver() => linear("Crystal River", -315.0, [
        stringToColor("#22E1FF"),
        stringToColor("#1D8FE1"),
        stringToColor("#625EB1")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 160. Soft Lipstick
  static Gradient softLipstick() => linear("Soft Lipstick", -315.0,
      [stringToColor("#B6CEE8"), stringToColor("#F578DC")], [0.0, 1.0]);

  /// 161. Salt Mountain
  static Gradient saltMountain() => linear("Salt Mountain", -315.0,
      [stringToColor("#FFFEFF"), stringToColor("#D7FFFE")], [0.0, 1.0]);

  /// 162. Perfect White
  static Gradient perfectWhite() => linear("Perfect White", -315.0,
      [stringToColor("#E3FDF5"), stringToColor("#FFE6FA")], [0.0, 1.0]);

  /// 163. Fresh Oasis
  static Gradient freshOasis() => linear("Fresh Oasis", -315.0,
      [stringToColor("#7DE2FC"), stringToColor("#B9B6E5")], [0.0, 1.0]);

  /// 164. Strict November
  static Gradient strictNovember() => linear("Strict November", -315.0,
      [stringToColor("#CBBACC"), stringToColor("#2580B3")], [0.0, 1.0]);

  /// 165. Morning Salad
  static Gradient morningSalad() => linear("Morning Salad", -315.0,
      [stringToColor("#B7F8DB"), stringToColor("#50A7C2")], [0.0, 1.0]);

  /// 166. Deep Relief
  static Gradient deepRelief() => linear("Deep Relief", -315.0, [
        stringToColor("#7085B6"),
        stringToColor("#87A7D9"),
        stringToColor("#DEF3F8")
      ], [
        0.0,
        0.5,
        1.0
      ]);

  /// 167. Sea Strike
  static Gradient seaStrike() => linear("Sea Strike", -315.0, [
        stringToColor("#77FFD2"),
        stringToColor("#6297DB"),
        stringToColor("#1EECFF")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 168. Night Call
  static Gradient nightCall() => linear("Night Call", -315.0, [
        stringToColor("#AC32E4"),
        stringToColor("#7918F2"),
        stringToColor("#4801FF")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 169. Supreme Sky
  static Gradient supremeSky() => linear("Supreme Sky", -315.0, [
        stringToColor("#D4FFEC"),
        stringToColor("#57F2CC"),
        stringToColor("#4596FB")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 170. Light Blue
  static Gradient lightBlue() => linear("Light Blue", -315.0, [
        stringToColor("#9EFBD3"),
        stringToColor("#57E9F2"),
        stringToColor("#45D4FB")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 171. Mind Crawl
  static Gradient mindCrawl() => linear("Mind Crawl", -315.0, [
        stringToColor("#473B7B"),
        stringToColor("#3584A7"),
        stringToColor("#30D2BE")
      ], [
        0.0,
        0.51,
        1.0
      ]);

  /// 172. Lily Meadow
  static Gradient lilyMeadow() => linear("Lily Meadow", -315.0, [
        stringToColor("#65379B"),
        stringToColor("#886AEA"),
        stringToColor("#6457C6")
      ], [
        0.0,
        0.53,
        1.0
      ]);

  /// 173. Sugar Lollipop
  static Gradient sugarLollipop() => linear("Sugar Lollipop", -315.0, [
        stringToColor("#A445B2"),
        stringToColor("#D41872"),
        stringToColor("#FF0066")
      ], [
        0.0,
        0.52,
        1.0
      ]);

  /// 174. Sweet Dessert
  static Gradient sweetDessert() => linear("Sweet Dessert", -315.0, [
        stringToColor("#7742B2"),
        stringToColor("#F180FF"),
        stringToColor("#FD8BD9")
      ], [
        0.0,
        0.52,
        1.0
      ]);

  /// 175. Magic Ray
  static Gradient magicRay() => linear("Magic Ray", -315.0, [
        stringToColor("#FF3CAC"),
        stringToColor("#562B7C"),
        stringToColor("#2B86C5")
      ], [
        0.0,
        0.52,
        1.0
      ]);

  /// 176. Teen Party
  static Gradient teenParty() => linear("Teen Party", -315.0, [
        stringToColor("#FF057C"),
        stringToColor("#8D0B93"),
        stringToColor("#321575")
      ], [
        0.0,
        0.5,
        1.0
      ]);

  /// 177. Frozen Heat
  static Gradient frozenHeat() => linear("Frozen Heat", -315.0, [
        stringToColor("#FF057C"),
        stringToColor("#7C64D5"),
        stringToColor("#4CC3FF")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 178. Gagarin View
  static Gradient gagarinView() => linear("Gagarin View", -315.0, [
        stringToColor("#69EACB"),
        stringToColor("#EACCF8"),
        stringToColor("#6654F1")
      ], [
        0.0,
        0.48,
        1.0
      ]);

  /// 179. Fabled Sunset
  static Gradient fabledSunset() => linear("Fabled Sunset", -315.0, [
        stringToColor("#231557"),
        stringToColor("#44107A"),
        stringToColor("#FF1361"),
        stringToColor("#FFF800")
      ], [
        0.0,
        0.29,
        0.67,
        1.0
      ]);

  /// 180. Perfect Blue
  static Gradient perfectBlue() => linear("Perfect Blue", -315.0, [
        stringToColor("#3D4E81"),
        stringToColor("#5753C9"),
        stringToColor("#6E7FF3")
      ], [
        0.0,
        0.48,
        1.0
      ]);

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

  static Gradient find(String name) {
    switch (name) {
      case "Warm Flame":
        return warmFlame();

      case "Night Fade":
        return nightFade();

      case "Spring Warmth":
        return springWarmth();

      case "Juicy Peach":
        return juicyPeach();

      case "Young Passion":
        return youngPassion();

      case "Lady Lips":
        return ladyLips();

      case "Sunny Morning":
        return sunnyMorning();

      case "Rainy Ashville":
        return rainyAshville();

      case "Frozen Dreams":
        return frozenDreams();

      case "Winter Neva":
        return winterNeva();

      case "Dusty Grass":
        return dustyGrass();

      case "Tempting Azure":
        return temptingAzure();

      case "Heavy Rain":
        return heavyRain();

      case "Amy Crisp":
        return amyCrisp();

      case "Mean Fruit":
        return meanFruit();

      case "Deep Blue":
        return deepBlue2();

      case "Ripe Malinka":
        return ripeMalinka();

      case "Cloudy Knoxville":
        return cloudyKnoxville();

      case "Malibu Beach":
        return malibuBeach();

      case "New Life":
        return newLife();

      case "True Sunset":
        return trueSunset();

      case "Morpheus Den":
        return morpheusDen();

      case "Rare Wind":
        return rareWind();

      case "Near Moon":
        return nearMoon();

      case "Wild Apple":
        return wildApple();

      case "Saint Petersburg":
        return saintPetersburg();

      case "Plum Plate":
        return plumPlate();

      case "Everlasting Sky":
        return everlastingSky();

      case "Happy Fisher":
        return happyFisher();

      case "Blessing":
        return blessing();

      case "Sharpeye Eagle":
        return sharpeyeEagle();

      case "Ladoga Bottom":
        return ladogaBottom();

      case "Lemon Gate":
        return lemonGate();

      case "Itmeo Branding":
        return itmeoBranding();

      case "Zeus Miracle":
        return zeusMiracle();

      case "Old Hat":
        return oldHat();

      case "Star Wine":
        return starWine();

      case "Happy Acid":
        return happyAcid();

      case "Awesome Pine":
        return awesomePine();

      case "New York":
        return newYork();

      case "Shy Rainbow":
        return shyRainbow();

      case "Mixed Hopes":
        return mixedHopes();

      case "Fly High":
        return flyHigh();

      case "Strong Bliss":
        return strongBliss();

      case "Fresh Milk":
        return freshMilk();

      case "Snow Again":
        return snowAgain();

      case "February Ink":
        return februaryInk();

      case "Kind Steel":
        return kindSteel();

      case "Soft Grass":
        return softGrass();

      case "Grown Early":
        return grownEarly();

      case "Sharp Blues":
        return sharpBlues();

      case "Shady Water":
        return shadyWater();

      case "Dirty Beauty":
        return dirtyBeauty();

      case "Great Whale":
        return greatWhale();

      case "Teen Notebook":
        return teenNotebook();

      case "Polite Rumors":
        return politeRumors();

      case "Sweet Period":
        return sweetPeriod();

      case "Wide Matrix":
        return wideMatrix();

      case "Soft Cherish":
        return softCherish();

      case "Red Salvation":
        return redSalvation();

      case "Burning Spring":
        return burningSpring();

      case "Night Party":
        return nightParty();

      case "Sky Glider":
        return skyGlider();

      case "Heaven Peach":
        return heavenPeach();

      case "Purple Division":
        return purpleDivision();

      case "Aqua Splash":
        return aquaSplash();

      case "Spiky Naga":
        return spikyNaga();

      case "Love Kiss":
        return loveKiss();

      case "Clean Mirror":
        return cleanMirror();

      case "Premium Dark":
        return premiumDark();

      case "Cold Evening":
        return coldEvening();

      case "Cochiti Lake":
        return cochitiLake();

      case "Summer Games":
        return summerGames();

      case "Passionate Bed":
        return passionateBed();

      case "Mountain Rock":
        return mountainRock();

      case "Desert Hump":
        return desertHump();

      case "Jungle Day":
        return jungleDay();

      case "Phoenix Start":
        return phoenixStart();

      case "October Silence":
        return octoberSilence();

      case "Faraway River":
        return farawayRiver();

      case "Alchemist Lab":
        return alchemistLab();

      case "Over Sun":
        return overSun();

      case "Premium White":
        return premiumWhite();

      case "Mars Party":
        return marsParty();

      case "Eternal Constance":
        return eternalConstance();

      case "Japan Blush":
        return japanBlush();

      case "Smiling Rain":
        return smilingRain();

      case "Cloudy Apple":
        return cloudyApple();

      case "Big Mango":
        return bigMango();

      case "Healthy Water":
        return healthyWater();

      case "Amour Amour":
        return amourAmour();

      case "Risky Concrete":
        return riskyConcrete();

      case "Strong Stick":
        return strongStick();

      case "Vicious Stance":
        return viciousStance();

      case "Palo Alto":
        return paloAlto();

      case "Happy Memories":
        return happyMemories();

      case "Midnight Bloom":
        return midnightBloom();

      case "Crystalline":
        return crystalline();

      case "Party Bliss":
        return partyBliss();

      case "Confident Cloud":
        return confidentCloud();

      case "Le Cocktail":
        return leCocktail();

      case "River City":
        return riverCity();

      case "Frozen Berry":
        return frozenBerry();

      case "Child Care":
        return childCare();

      case "Flying Lemon":
        return flyingLemon();

      case "New Retrowave":
        return newRetrowave();

      case "Hidden Jaguar":
        return hiddenJaguar();

      case "Above The Sky":
        return aboveTheSky();

      case "Nega":
        return nega();

      case "Dense Water":
        return denseWater();

      case "Seashore":
        return seashore();

      case "Marble Wall":
        return marbleWall();

      case "Cheerful Caramel":
        return cheerfulCaramel();

      case "Night Sky":
        return nightSky();

      case "Magic Lake":
        return magicLake();

      case "Young Grass":
        return youngGrass();

      case "Colorful Peach":
        return colorfulPeach();

      case "Gentle Care":
        return gentleCare();

      case "Plum Bath":
        return plumBath();

      case "Happy Unicorn":
        return happyUnicorn();

      case "African Field":
        return africanField();

      case "Solid Stone":
        return solidStone();

      case "Orange Juice":
        return orangeJuice();

      case "Glass Water":
        return glassWater();

      case "North Miracle":
        return northMiracle();

      case "Fruit Blend":
        return fruitBlend();

      case "Millennium Pine":
        return millenniumPine();

      case "High Flight":
        return highFlight();

      case "Mole Hall":
        return moleHall();

      case "Space Shift":
        return spaceShift();

      case "Forest Inei":
        return forestInei();

      case "Royal Garden":
        return royalGarden();

      case "Rich Metal":
        return richMetal();

      case "Juicy Cake":
        return juicyCake();

      case "Smart Indigo":
        return smartIndigo();

      case "Sand Strike":
        return sandStrike();

      case "Norse Beauty":
        return norseBeauty();

      case "Aqua Guidance":
        return aquaGuidance();

      case "Sun Veggie":
        return sunVeggie();

      case "Sea Lord":
        return seaLord();

      case "Black Sea":
        return blackSea();

      case "Grass Shampoo":
        return grassShampoo();

      case "Landing Aircraft":
        return landingAircraft();

      case "Witch Dance":
        return witchDance();

      case "Sleepless Night":
        return sleeplessNight();

      case "Angel Care":
        return angelCare();

      case "Crystal River":
        return crystalRiver();

      case "Soft Lipstick":
        return softLipstick();

      case "Salt Mountain":
        return saltMountain();

      case "Perfect White":
        return perfectWhite();

      case "Fresh Oasis":
        return freshOasis();

      case "Strict November":
        return strictNovember();

      case "Morning Salad":
        return morningSalad();

      case "Deep Relief":
        return deepRelief();

      case "Sea Strike":
        return seaStrike();

      case "Night Call":
        return nightCall();

      case "Supreme Sky":
        return supremeSky();

      case "Light Blue":
        return lightBlue();

      case "Mind Crawl":
        return mindCrawl();

      case "Lily Meadow":
        return lilyMeadow();

      case "Sugar Lollipop":
        return sugarLollipop();

      case "Sweet Dessert":
        return sweetDessert();

      case "Magic Ray":
        return magicRay();

      case "Teen Party":
        return teenParty();

      case "Frozen Heat":
        return frozenHeat();

      case "Gagarin View":
        return gagarinView();

      case "Fabled Sunset":
        return fabledSunset();

      case "Perfect Blue":
        return perfectBlue();

      default:
        throw Exception("Gradient name not found.");
    }
  }
}
