/*
  6.- Haz un programa en el que, a partir de dos variables enteras, y un String introducidos
  por consola que represente un operador, realice solo una de entre las operaciones: suma,
  resta, multiplicación, división entera, resto de la división entera. La rama que se ejecute,
  dependerá del operador en sí, funcionará como una rudimentaria calculadora.
*/

import 'dart:io';

void main() {
  stdout.write("Introduce el primer número entero: ");
  int? x = int.tryParse(stdin.readLineSync() ?? "");
  stdout.write("Introduce el segundo número entero: ");
  int? y = int.tryParse(stdin.readLineSync() ?? "");
  stdout.write("Introduce una operación (suma, resta, multiplicacion, division entera, resto de la division entera...)",);
  String? operacion = stdin.readLineSync();

  if (x == null || y == null){
    print("ERROR: Introduce un número entero.");
    return;
  }

  if (operacion == "suma") {
    print("Suma: ${x + y}");
  } else if (operacion == "resta") {
    print("Resta: ${x - y}");
  } else if (operacion == "multiplicacion") {
    print("Multiplicacion: ${x * y}");
  } else if (operacion == "division entera") {
    if (y == 0) {
      print("ERROR: No se puede dividir entre cero.");
    } else {
      print("División: ${x ~/ y}");
    }
  } else if (operacion == "resto de la division entera") {
    if (y == 0) {
      print("ERROR: No se puede dividir entre cero.");
    } else {
      print("Resto de la división entera: ${x % y}");
    }
  } else {
    print("\nERROR: Introduce una operacion válida.");
  }
}