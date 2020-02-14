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
///    ),
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
