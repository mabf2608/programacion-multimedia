/*
  12.- Calcula en Dart el MCD de dos números enteros positivos utilizando el algoritmo de
  Euclides.
*/

void main() {
  int a = 72;
  int b = 45;

  while (b != 0) {
    int resto = a % b;
    a = b;
    b = resto;
  }

  print("El MCD es: $a");
}