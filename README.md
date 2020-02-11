<img src="https://raw.githubusercontent.com/JonathanMonga/flutter_shine.dart/master/images/image_1.png" alt="Image 1" height="40%" width="90%"/>

# Flutter Shine

[![Pub](https://img.shields.io/badge/pub-0.0.5-blue)](https://pub.dev/packages/flutter_shine)
[![Build Status](https://travis-ci.org/JonathanMonga/flutter_shine.dart.svg?branch=master)](https://travis-ci.org/JonathanMonga/flutter_shine)
<a href="https://stackoverflow.com/questions/tagged/flutter?sort=votes">
 <img alt="Awesome Flutter" src="https://img.shields.io/badge/Awesome-Flutter-blue.svg?longCache=true&style=flat-square" />
</a>

Flutter widget inspired by [Shine](https://github.com/bigspaceship/shine.js)

## Installation

Add the Package

```yaml
dependencies:
  flutter_shine: ^0.0.5
```

# ❔ Usage

### Import this class

```dart
import 'package:flutter_shine/flutter_shine.dart';
```

### Flutter Shine

See how easy it is to create a shadow on text and on a container.

<img src="https://raw.githubusercontent.com/JonathanMonga/flutter_shine.dart/master/images/image_2.png" align = "right" height = "350" alt="Exemple">

```dart
FlutterShine(
    builder: (BuildContext context, ShineShadow shineShadow) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
                Text(
                    "Shine",
                    style: TextStyle(
                        fontSize: 100,
                        color: Colors.white,
                        shadows: shineShadow.shadows),
                ),
                Divider(),
                Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.white, boxShadow: shineShadow.boxShadows),
                )
            ],
        );
    },
),
```

Extremely customizable shadow with a dynamic light positions.

You can customize follows values :

- number of Steps : The density of the shadow
- opacity : The opacity of the shadow
- opacity Power : The opacity power
- offset : The offset of the shadow
- offset Power : The offset power
- blur : The blur of the shadow
- blur Power : The blur power
- shadow Color : The color of the shadow

<img src="https://raw.githubusercontent.com/JonathanMonga/flutter_shine.dart/master/images/image_3.gif" align = "right" height = "350" alt="Exemple">

```dart
FlutterShine(
    [config: Config(shadowColor: Colors.red[300]),]
    [light: Light(intensity: 1, position: Point(x, y)),]
    builder: (BuildContext context, ShineShadow shineShadow) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
                Text(
                    "Shine",
                    style: TextStyle(
                        fontSize: 100,
                        color: Colors.white,
                        shadows: shineShadow.shadows),
                ),
                Divider(),
                Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.white, boxShadow: shineShadow.boxShadows),
                )
            ],
        );
    },
),
```

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


|                                                      Italic                                                      |                                                         Block letters                                                          |
| :--------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------: |
|        ![](outputs/output_Biotouch/18-15_02-02-2018/Identification/ITALIC/ITALIC_movementPoints_cmc.png)         |        ![](outputs/output_Biotouch/18-15_02-02-2018/Identification/BLOCK_LETTERS/BLOCK_LETTERS_movementPoints_cmc.png)         |
|   ![](outputs/output_Biotouch/18-15_02-02-2018/Verification/ITALIC/ITALIC_movementPoints_notbalanced_roc.png)    |   ![](outputs/output_Biotouch/18-15_02-02-2018/Verification/BLOCK_LETTERS/BLOCK_LETTERS_movementPoints_notbalanced_roc.png)    |
| ![](outputs/output_Biotouch/18-15_02-02-2018/Verification/ITALIC/ITALIC_movementPoints_notbalanced_frrVSfpr.png) | ![](outputs/output_Biotouch/18-15_02-02-2018/Verification/BLOCK_LETTERS/BLOCK_LETTERS_movementPoints_notbalanced_frrVSfpr.png) |