import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF441D8);
const List<Color> _colorThemes = [
  _customColor,
  Colors.teal,
  Colors.orange,
  Colors.yellow,
  Colors.blue
];

class AppTheme {
  final int selectedColor;

  AppTheme({required this.selectedColor})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1,
            "el valor ingresado debe ser entre 0 y 4");
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[this.selectedColor]);
  }
}
