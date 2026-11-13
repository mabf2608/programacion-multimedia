/*
  9.- Versiona el programa anterior para que muestre las 10 tablas de multiplicar (del 1 al 10).
  Ya no será necesario introducir nada.
*/

void main() {
  for (int i = 1; i <= 10; i++) {
    print("---Tabla del $i---");
    for (int j = 1; j <= 10; j++) {
      print(" $i * $j = ${i * j}");
    }
    print("");
  }
  print("------------------");
}