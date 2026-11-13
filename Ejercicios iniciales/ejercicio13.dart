/*
  13.- Calcula en Dart el cociente y el resto de la división entera entre dos números enteros y
  positivos utilizando el algoritmo de Euclides.
*/

void main() {
  int a = 71;
  int b = 10;

  int cociente = 0;
  int resto = a;

  while (resto >= b) {
    resto -= b;
    cociente++;
  }

  print("El cociente es: $cociente");
  print("El resto es: $resto");
}
