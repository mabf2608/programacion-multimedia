/*
  14.- Haz un pequeño programa en Dart que simule el lanzamiento de un dado. Investiga la
  librería ‘dart:math’ en la documentación oficial.
*/

import 'dart:math';

void main() {
  print("Se tira el dado: ");
  print("Ha salido: ${Random().nextInt(6) + 1}");
}
