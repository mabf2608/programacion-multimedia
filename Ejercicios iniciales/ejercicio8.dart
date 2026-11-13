/*
  8.- Haz un programa en Dart que muestre la tabla de multiplicar de un número entero (entre
  1 y 10) que se introducirá por consola. Investiga la función stdin.readLineSync() para
  realizar entrada de datos desde consola. ¿Qué ocurre con el sistema “sound type”?.
  Soluciónalo utilizando un tipo nullable. Testea la entrada sometiéndola a distintas pruebas
  de datos de entrada.
*/

import 'dart:io';

void main() {
  stdout.write("Introduce un número entero: ");
  int? n = int.tryParse(stdin.readLineSync() ?? "");

  if (n == null || n < 1 || n > 10) {
    print("ERROR: Introduce un número entero entre 1 y 10.");
    return;
  }
  
  print("---Tabla del $n---");
  for (int i = 1; i <= 10; i++) {
    print(" $n * $i = ${n * i}");
  }
  print("------------------");
}