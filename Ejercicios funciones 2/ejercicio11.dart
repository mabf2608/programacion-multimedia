/*
  11.- Ídem con DNIs españoles. Tendrá que comprobar que la letra es correcta . Consulta la
  web del Ministerio de Interior
*/

import 'dart:io';

import './validaciones.dart' show validacionDNI;

bool comprobacionDNI(String cadena) {
  String letrasPermitidas = "TRWAGMYFPDXBNJZSQVHLCKE";
  String letra = cadena[8];
  int numeros = int.parse(cadena.substring(0, 8));

  return (letrasPermitidas[numeros % 23] == letra);
}

void main() {
  stdout.write("Introduce una DNI: ");
  String? cadena = stdin.readLineSync();

  try {
    if (cadena == null || cadena.trim().isEmpty) {
      throw const FormatException("Cadena vacía o nula");
    }

    if (validacionDNI(cadena) && comprobacionDNI(cadena)) {
      print("Es un DNI: $cadena");
    } else {
      print("No es un DNI.");
    }
  } on FormatException catch (e) {
    print("Error de formato: $e");
  } catch (e) {
    print("Ha ocurrido un error inesperado: $e");
  }
}