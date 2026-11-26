/* 
  10.- Crea otra función que haga lo mismo con URL’s
*/

import 'dart:io';

import './validaciones.dart' show validacionEmail;

void main() {
  stdout.write("Introduce una Email: ");
  String? cadena = stdin.readLineSync();

  try {
    if (cadena == null || cadena.trim().isEmpty) {
      throw const FormatException("Cadena vacía o nula");
    }

    if (validacionEmail(cadena)) {
      print("Es un Email: $cadena");
    } else {
      print("No es un Email.");
    }
  } on FormatException catch (e) {
    print("Error de formato: $e");
  } catch (e) {
    print("Ha ocurrido un error inesperado: $e");
  }
}