/*
  11.- Haz el pequeño programa en Dart que calcule el factorial de un número n inicializado a
  un valor entero y positivo.
*/

void main() {
  int n = 10;
  int factorial = 1;

  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }

  print("El factorial de $n es: $factorial.");
}