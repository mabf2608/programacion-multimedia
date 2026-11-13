/*
  17.- Declara un enum con los colores del arco iris. Muestra con un print todos los valores,
  después, solo uno (están indexados a partir del 0), y accede a uno por su nombre
  (byName). Provoca una excepción buscando uno que no exista ¿Qué ocurre?
*/

enum colores { Rojo, Amarillo, Naranja, Verde, Azul, Indigo, Violeta }

void main() {
  print(colores.values);
  print(colores.values[0]);
  print(colores.values.byName("Verde"));
  // El siguiente codigo imprime: Invalid argument (name): No enum value with that name: "Magenta".
  print(colores.values.byName("Magenta"));
}
