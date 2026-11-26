/* 
  7.- Haz un pequeño programa en Dart al que le introduzcas una frase y una subcadena. 
  Buscará si está contenida en la frase, y en qué posición la encuentra por primera y última vez
*/

import 'dart:io';

void buscarSubcadena(String frase, String subcadena) {
  String minFrase = frase.toLowerCase();
  String minSubcadena = subcadena.toLowerCase();

  if (minFrase.contains(minSubcadena)) {
    print(
      "La primera aparición es en la posición ${minFrase.indexOf(minSubcadena)} y la última en la ${minFrase.lastIndexOf(minSubcadena)}",
    );
  } else {
    print("No se encontró la subcadena dentro de la frase.");
  }
}

void main() {
  stdout.write("Escribe una frase para iniciar el proceso: ");
  String? frase = stdin.readLineSync();

  stdout.write("Escribe una subcadena para iniciar la búsqueda: ");
  String? subcadena = stdin.readLineSync();

  try {
    if (frase == null || frase.trim().isEmpty) {
      throw const FormatException("Frase vacía o nula.");
    } else if (subcadena == null || subcadena.trim().isEmpty) {
      throw const FormatException("Subcadena vacía o nula.");
    }

    buscarSubcadena(frase, subcadena);
    
  } on FormatException catch (e) {
    print("Error de formato: $e");
  } catch (e) {
    print("Ha ocurrido otro error inesperado: $e");
  }
}
