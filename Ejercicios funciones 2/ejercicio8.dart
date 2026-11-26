/* 
  8.- Vamos por fin a trabajar la validación de strings. Investiga cómo se definen las
  expresiones regulares en Dart y construye una función que devuelva true si el string que
  se le pase como parámetro hace match con la expresión regular de un color codificado en
  RGB:
    ● ejemplos positivos: #4F6, #982A3B
    ● ejemplos negativos: red, 987s, 882244
*/

import 'dart:io';

import './validaciones.dart' show validacionRGB;

void main() {
  stdout.write("Introduce un color codificado en RGB: ");
  String? cadena = stdin.readLineSync();

  try {
    if (cadena == null || cadena.trim().isEmpty) {
      throw const FormatException("Cadena vacía o nula");
    }

    if (validacionRGB(cadena)) {
      print("Es un color codificado en RGB: $cadena");
    } else {
      print("No es un color codificado en RGB.");
    }
  } on FormatException catch (e) {
    print("Error de formato: $e");
  } catch (e) {
    print("Ha ocurrido un error inesperado: $e");
  }
}
