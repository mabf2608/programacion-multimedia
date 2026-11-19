/* 
  14.- Haz una nueva versión del ejercicio 6, esta vez con una función RECURSIVA
*/

int sumaNaturales(int n) {
  if (n <= 1) {
    return n;
  }
  return n + sumaNaturales(n - 1);
}

void main() {
  int suma = sumaNaturales(7);

  print(suma);
}