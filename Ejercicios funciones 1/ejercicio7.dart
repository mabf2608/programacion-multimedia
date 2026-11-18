/* 
  7.- Haz el pequeño programa en Dart que calcule el factorial de un número n inicializado a un valor entero y positivo. La función tendrá a n como parámetro de entrada y devolverá el valor de la factorial al punto de la llamada
*/

int factorial(int n) {
  if (n <= 0) {
    return 1;
  }

  int factorial = 1;

  for (int i = 1; i <= n; i++) {
    factorial *= i;
  }
  return factorial;
}

void main() {
  int calculo = factorial(7);

  print(calculo);
}