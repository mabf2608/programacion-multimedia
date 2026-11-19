/* 
  13.- Haz un pequeño programa Dart que defina la función esPrimo(int n), a la que invocará
  pasándole un número entero positivo, y que devolverá un valor booleano tras buscarle
  divisores al número: true si lo es, false si no lo es.
*/

bool esPrimo(int n) {
  if (n < 2) {
    return false;
  }

  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  int n = 11;
  bool resultado = esPrimo(n);

  if (resultado) {
    print("El número $n es Primo.");
  } else {
    print("El número $n no es Primo.");
  }
}