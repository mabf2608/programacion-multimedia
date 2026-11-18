/* 
  6.- Haz un programa en Dart que contenga una función que calcule la suma de los n primeros números naturales. La función tendrá un parámetro n y devolverá el valor de la suma al punto de la llamada.
*/

int sumaNaturales(int n) {
  int suma = 0;

  for (int i = 1; i <= n; i++) {
    suma += i;
  }
  return suma;
}

void main() {
  int suma = sumaNaturales(7);

  print(suma);
}