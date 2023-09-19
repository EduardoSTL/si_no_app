import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);

//!paleta de la app, similar a un enum
const List<Color> _colorThemes =[
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

//clase que proporciona un tema personalizado para la vista de la app
class AppTheme{
  //* parámetro opcional que se utiliza para determinar el color seleccionado para el tema
  final int selectedColor;

  //* assert para asegurarse de que el valor de selectedColor esté dentro de los límites válidos
  AppTheme({this.selectedColor = 0}) 
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
      'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme(){
    //retorna un Obj ThemeData que define el tema de la app
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.dark
    );
  }
}