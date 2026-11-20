/* 
  19.- Haz lo mismo en otro programa con una función que genere una lista de todos los
  números primos que hay entre 1 y n, siendo n un valor entero declarado e inicializado en el
  programa. Ten en cuenta que puedes reutilizar la función esPrimo ya trabajada en el
  ejercicio 13
*/

import "ejercicio13.dart" show esPrimo;

List<int> primos(int n) {
  List<int> lista = [];
  // Se usa 'i < n' para evaluar estrictamente los números situados entre 1 y n
  // sin incluir los extremos (con n = 5, revisa 2, 3 y 4, devolviendo [2, 3]).
  for (int i = 2; i < n; i++) {
    if (esPrimo(i)) {
      lista.add(i);
    }
  }

  return lista;
}

void main() {
  int n = 5;
  List<int> numerosPrimos = primos(n);

  print("Números primos estrictamente entre 1 y $n: $numerosPrimos");
}
