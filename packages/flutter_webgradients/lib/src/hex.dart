import 'package:flutter/material.dart';

Color _intToColor(int hexNumber) => Color.fromARGB(
    255,
    (hexNumber >> 16) & 0xFF,
    ((hexNumber >> 8) & 0xFF),
    (hexNumber >> 0) & 0xFF);

//String To Hex Number
Color stringToColor(String hex) =>
    _intToColor(int.parse(_textSubString(hex), radix: 16));

//Substring
String _textSubString(String text) {
  if (text == null) return null;

  if (text.length < 6) return null;

  if (text.length == 6) return text;

  return text.substring(text.length - 6, 6);
}
