/* 
  9.- Haz en Dart el programa que invoca a dos funciones, una que calcula el cociente de la división entre dos números enteros positivos utilizando el algoritmo de Euclides y la otra que calcula el resto. Los dos números serán parámetros de entrada, y la función devolverá el resultado al punto de la llamada. Ambos números serán inicializados en el propio programa.
    Pregunta 1: qué estructura de datos nos permitiría que una función pudiera devolver dos valores simultáneamente?
    Pregunta 2: ¿Por qué no sería recomendable hacer una función así? Investiga el principio SRP
*/

/*
  Respuesta 1 - Usaría un Record, List o Map, aunque el más recomendable es Record ya que permite agrupar valores de forma inmutable y tipada, incluso poniéndoles nombre para no confundir cuál es cuál.

  Respuesta 2 - El Principio de Responsabilidad Única (SRP - Single Responsibility Principle), que forma parte de los principios SOLID de diseño de software, establece que cada función o módulo debe tener una única responsabilidad y un único motivo para cambiar.
*/

int cocienteDivision(int n1, int n2) {
  int cociente = 0;

  while (n1 >= n2) {
    n1 -= n2;
    cociente++;
  }

  return cociente;
}

int restoDivision(int n1, int n2) {
  while (n1 >= n2) {
    n1 -= n2;
  }

  return n1;
}

void main() {
  int n1 = 27;
  int n2 = 4;
  int cociente = cocienteDivision(n1, n2);
  int resto = restoDivision(n1, n2);

  print("División $n1 / $n2 = Cociente: $cociente | Resto: $resto");
}