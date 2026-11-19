/* 
  18.- Haz un programa Dart que declare una lista, y la inicializa con los valores devueltos por
  una función que devuelva los números de la serie de Fibonacci hasta llegar al término
  n-ésimo, siendo n un valor entero declarado e inicializado al principio del programa
*/

List<int> fibonacci(int n) {
  List<int> lista = [];
  int a = 0;
  int b = 1;

  for (int i = 0; i < n; i++) {
    int aux = a + b;
    lista.add(a);
    a = b;
    b = aux;
  }

  return lista;
}

void main() {
  int n = 5;
  List<int> serieFibonacci = fibonacci(n);

  print("Lista de los $n primeros números de fibonacci: $serieFibonacci");
}