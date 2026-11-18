/* 
  8.- Haz en Dart el programa que invoca n1 una función que calcula el MCD de dos números enteros positivos utilizando el algoritmo de Euclides. Los dos números serán parámetros de entrada, y la función devolverá el resultado al punto de la llamada. Ambos números serán inicializados en el propio programa.
*/

int mcd(int n1, int n2) {
  while (n2 != 0) {
    int resto = n1 % n2;
    n1 = n2;
    n2 = resto;
  }

  return n1;
}

void main() {
  int calculo = mcd(45, 117);

  print(calculo);
}