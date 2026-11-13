/*
  10.- Haz un programa en Dart que calcule la suma de los n primeros números naturales. El
  valor de n será inicializado en el propio programa.
*/

void main() {
  int n = 87;
  int suma = 0;

  for (int i = 1; i <= n; i++) {
    suma += i;
  }

  print("La suma de los primeros $n números naturales es: $suma.");
}