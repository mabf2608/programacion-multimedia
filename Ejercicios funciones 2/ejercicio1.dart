/* 
  1.- Volveremos a versionar el ejercicio 6 de la relación (II) que calculaba la suma de los n primeros números naturales, pero esta vez, el valor de n será solicitado por consola. Para ello deberás importar la librería dart:io e invocar a las funciones:
    ● stdout.write("Introduce un número ") → devuelve void
    ● stdin.readLineSync() → devuelve un string captado por la entrada estándar
    ● int.parse() → convierte un String en número entero (se puede utilizar también con double y bool).
  El programa funciona correctamente si se introduce un número tal y como se espera, pero ¿qué ocurre si no es así? ¿qué pasa si se introduce algo no convertible a entero?¿o un intro? Soluciona este problema con try-catch.
*/

import "dart:io";

int sumaNaturales(int n) {
  if (n <= 1) {
    return n;
  }
  return n + sumaNaturales(n - 1);
}

void main() {
  stdout.write("Introduce un número entero positivo: ");
  String? entrada = stdin.readLineSync();
  int? n;

  try {
    if (entrada == null || entrada.trim().isEmpty) {
      throw const FormatException("Entrada vacía o nula");
    }
    n = int.parse(entrada.trim());
  } on FormatException catch (e) {
    print("Error de formato: $e");
  } catch (e) {
    print("Ha ocurrido otro error inesperado: $e");
  }

  if (n != null) {
    if (n <= 0) {
      print("El número debe ser mayor que 0 para calcular la suma de naturales.");
    } else {
      int suma = sumaNaturales(n);
      print(suma);
    }
  } else {
    print("No se pudo calcular la suma porque el número no es válido.");
  }
}