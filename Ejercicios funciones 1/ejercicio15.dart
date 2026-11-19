/* 
  15.- Lo mismo con el ejercicio 7
*/

int factorial(int n) {
  if (n <= 0) {
    return 1;
  }

  return n * factorial(n - 1);
}

void main() {
  int calculo = factorial(7);

  print(calculo);
}