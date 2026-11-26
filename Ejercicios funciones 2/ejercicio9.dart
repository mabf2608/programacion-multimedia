/* 
  9.- Crea otra función que haga lo mismo con URL’s
*/

import 'dart:io';

import './validaciones.dart' show validacionURL;

void main() {
  stdout.write("Introduce una URL: ");
  String? cadena = stdin.readLineSync();

  try {
    if (cadena == null || cadena.trim().isEmpty) {
      throw const FormatException("Cadena vacía o nula");
    }

    if (validacionURL(cadena)) {
      print("Es una URL: $cadena");
    } else {
      print("No es una URL.");
    }
  } on FormatException catch (e) {
    print("Error de formato: $e");
  } catch (e) {
    print("Ha ocurrido un error inesperado: $e");
  }
}