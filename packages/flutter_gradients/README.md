[![Flutter Community: after_layout](https://fluttercommunity.dev/_github/header/flutter_gradients)](https://github.com/fluttercommunity/community)

# Flutter Gradients

<img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/header.jpg" align="center" alt="Header" height="500" width="100%"/>

A curated collection of awesome gradients made in Dart (port of [https://webgradients.com](https://webgradients.com) for Flutter). Only linear gradients included for now.

[![Pub](https://img.shields.io/badge/pub-1.0.0+3-blue)](https://pub.dev/packages/flutter_gradients)
[![Build Status](https://travis-ci.org/JonathanMonga/flutter_gradients.svg?branch=master)](https://travis-ci.org/JonathanMonga/flutter_gradients)

### Show some :heart: and star the repo to support the project

[![GitHub stars](https://img.shields.io/github/stars/JonathanMonga/flutter_gradients.svg?style=social&label=Star)](https://github.com/JonathanMonga/flutter_gradients) [![GitHub forks](https://img.shields.io/github/forks/JonathanMonga/flutter_gradients.svg?style=social&label=Fork)](https://github.com/JonathanMonga/flutter_gradients/fork) [![GitHub watchers](https://img.shields.io/github/watchers/JonathanMonga/flutter_gradients.svg?style=social&label=Watch)](https://github.com/JonathanMonga/flutter_gradients) [![GitHub followers](https://img.shields.io/github/followers/JonathanMonga.svg?style=social&label=Follow)](https://github.com/JonathanMonga)  
[![Twitter Follow](https://img.shields.io/twitter/follow/jonathan_monga.svg?style=social)](https://twitter.com/jonathan_monga)

## Installation

Add the Package

```yaml
dependencies:
  flutter_gradients: ^1.0.0+3
```

# Usage

### Import the package

```dart
import 'package:flutter_gradients/flutter_gradients.dart';
```

## How To Use

### For LinearGradient

By default `FlutterGradient` will generates the `LinearGradient`.

<img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/angel_care_linear_gradient.png" align = "right" height = "180" alt="Exemple">

```dart
   GradientType type: GradientType.linear;
```

```dart
    Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: FlutterGradient.warmFlame(),
        ),
    );
```

or

```dart
    Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: FlutterGradient.warmFlame(type: GradientType.linear),
        ),
    );
```

### For RadialGradient

You can customize the follows values :

- center : The center of the gradient, as an offset into the (-1.0, -1.0) x (1.0, 1.0) square describing the gradient which will be mapped onto the paint box.
- radius : The radius of the gradient, as a fraction of the shortest side of the paint box.
- tileMode : How this gradient should tile the plane beyond the outer ring at `radius` pixels from the `center`.

<img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/angel_care_radial_gradient.png" align = "right" height = "180" alt="Exemple">

```dart
   GradientType type: GradientType.radial;
```

```dart
    Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: FlutterGradient.warmFlame(
                type: GradientType.radial,
                center: Alignment.center,
                radius: 0.5,
                tileMode = TileMode.clamp,
           ),
        ),
    );
```

### For SweepGradient

You can customize the follows values :

- center : The center of the gradient, as an offset into the (-1.0, -1.0) x (1.0, 1.0) square describing the gradient which will be mapped onto the paint box.
- startAngle : The angle in radians at which stop 0.0 of the gradient is placed.
- endAngle : The angle in radians at which stop 1.0 of the gradient is placed.
- tileMode : How this gradient should tile the plane beyond the outer ring at `radius` pixels from the `center`.

<img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/angel_care_sweep_gradient.png" align = "right" height = "180" alt="Exemple">

```dart
   GradientType type: GradientType.sweep;
```

```dart
    Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: FlutterGradient.warmFlame(
                type: GradientType.sweep,
                center: Alignment.center,
                startAngle: 0.0,
                endAngle: math.pi * 2,
                tileMode = TileMode.clamp,
            ),
        ),
    );
```

## Catalogue

| 1                                                                                                                                      | 2                                                                                                                                      | 3                                                                                                                                      |
| -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_01.png" height = "350" alt="Image 01"> | <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_02.png" height = "350" alt="Image 02"> | <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_03.png" height = "350" alt="Image 03"> |
| <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_04.png" height = "350" alt="Image 04"> | <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_05.png" height = "350" alt="Image 05"> | <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_06.png" height = "350" alt="Image 06"> |
| <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_07.png" height = "350" alt="Image 07"> | <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_08.png" height = "350" alt="Image 08"> | <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_09.png" height = "350" alt="Image 09"> |
| <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_10.png" height = "350" alt="Image 10"> | <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_11.png" height = "350" alt="Image 11"> | <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_12.png" height = "350" alt="Image 12"> |
| <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_13.png" height = "350" alt="Image 13"> | <img src="https://raw.githubusercontent.com/JonathanMonga/flutter_gradients/master/images/image_14.png" height = "350" alt="Image 14"> |

## Examples

Web and command-line examples can be found in the `example` folder.

### Web Examples

In order to run the web examples, please follow these steps:

1. Clone this repo and enter the directory
2. Run `pub get`
3. Run `pub run build_runner serve example`
4. Navigate to [http://localhost:8080/web/](http://localhost:8080/web/) in your browser

### Command Line Examples

In order to run the command line example, please follow these steps:

1. Clone this repo and enter the directory
2. Run `pub get`
3. Run `dart example/lib/main.dart`

### Flutter Example

#### Install Flutter

In order to run the flutter example, you must have Flutter installed. For installation instructions, view the online
[documentation](https://flutter.io/).

#### Run the app

1. Open up an Android Emulator, the iOS Simulator, or connect an appropriate mobile device for debugging.
2. Open up a terminal
3. `cd` into the `example/lib/` directory
4. Run `flutter doctor` to ensure you have all Flutter dependencies working.
5. Run `flutter packages get`
6. Run `flutter run`

# License

    MIT License

    Copyright (c) 2020 Jonathan Monga

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
