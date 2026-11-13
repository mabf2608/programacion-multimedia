/*
  18.- Modifica el programa anterior para que gestione el error con try-catch-finally. Para ello,
  investiga en la documentación oficial como se gestionan los errores.
*/

enum colores { Rojo, Amarillo, Naranja, Verde, Azul, Indigo, Violeta }

void main() {
  print(colores.values);
  print(colores.values[0]);
  print(colores.values.byName("Verde"));

  try {
    print(colores.values.byName("Magenta"));
  } catch (e, s) {
    print("Detalles:\n$e");
    print("Stack trace:\n$s");
  } finally {
    print("Bloque try-catch-finally finalizado.");
  }
}