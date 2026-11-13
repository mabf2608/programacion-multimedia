/* 
  4.-  Declara una variable como nullable. Investiga en la documentación oficial y también, en
  este artículo, qué implica y cómo se trabaja con variables de este tipo. Prueba los ejemplos
  que vienen ahí. De momento, dejaremos aparte todo lo referente a clases y objetos.
*/

// Utilizo la siguiente linea para ignorar las advertencias de las diferentes comprobaciones (me molesta el ruido visual)
// ignore_for_file: unnecessary_null_comparison, dead_code, unnecessary_non_null_assertion

void main() {
  String nombre = "Miguel Ángel";
  print(nombre);

  // Declaración de una variable nullable 
  String? apellido;
  print(apellido);
  apellido = "Bonilla";
  print(apellido);

  // Comprobación de null
  if (apellido != null) {
    print(apellido.length);
  }

  // Operador ?. (acceso seguro)
  String? ciudad;
  print(ciudad?.length); // null

  // Operador ?? (valor alternativo)
  print(ciudad ?? "Sin ciudad");

  // Operador ??= (asignación si es null)
  ciudad ??= "Málaga";
  print(ciudad);

  // Operador ! (afirma que no es null)
  String? telefono = "123456789";
  print(telefono!.length);

  // Asignación definitiva
  int edad;
  bool mayorDeEdad = true;

  if (mayorDeEdad) {
    edad = 24;
  } else {
    edad = 17;
  }

  print(edad);

  // No se puede asignar null a una variable no nullable
  /*
    String prueba = null;
  */

  // El operador ! provoca un error si el valor es null
  /* 
    String? prueba2;
    print(prueba2!.length);
  */
}