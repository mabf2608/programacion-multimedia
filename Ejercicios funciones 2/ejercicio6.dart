/* 
  6.- Haz un pequeño programa que Dart que te pida una frase por la entrada estándar y te la muestre con las palabras en orden contrario. Y también la frase en orden inverso carácter a carácter. También que te diga si la frase es un palíndromo (por ejemplo: ‘Dabale arroz a la zorra el abad’ debería dar positivo)
*/

import 'dart:io';

void main() {
  stdout.write("Escribe una frase para iniciar el proceso: ");
  String? frase = stdin.readLineSync();
  String aux = "";

  try {
    if (frase == null || frase.trim().isEmpty) {
      throw const FormatException("Entrada vacía o nula.");
    }
    print("\n" + frase.split(" ").reversed.join(" "));
    print(frase.split("").reversed.join(""));
    aux = frase.toLowerCase().replaceAll(" ", "");
    if (aux == aux.split("").reversed.join("")) {
      print("Es un palíndromo.");
    } else {
      print("No es un palíndromo.");
    }
  } on FormatException catch (e) {
    print("Error de formato: $e");
  } catch (e) {
    print("Ha ocurrido otro error inesperado: $e");
  }
}