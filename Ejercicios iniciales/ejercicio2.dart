/* 
  2.- Busca en la documentación oficial de Dart cuales son los tipos de datos Built-in y
  experimenta con ellos.

  Declara e inicializa una variable de cada uno de estos tipos: int, double, String, bool,
  dynamic.

  Añade tipos más complejos como List, Map, Set, record al repaso anterior
  Investiga qué operadores se pueden utilizar con cada uno de ellos y cómo se comporta la
  función print, así como las opciones de parseo

*/

void main() {
  // int: 
  int edad = 24;
  print("\nint: ");
  print(edad);
  print(edad + 2);
  print(edad > 18);
  print(int.parse("25"));

  // double:
  double altura = 1.76;
  print("\ndouble: ");
  print(altura);
  print(altura * 2);
  print(double.parse("1.80"));

  // String:
  String nombre = "Miguel Ángel";
  print("\nString: ");
  print(nombre);
  print(nombre + " Bonilla");
  print(nombre == "Miguel Ángel");
  print(edad.toString());

  // bool:
  bool mayorDeEdad = true;
  print("\nbool: ");
  print(mayorDeEdad);
  print(!mayorDeEdad);
  print(mayorDeEdad && false);
  print(bool.parse("true"));

  // dynamic:
  dynamic dato = 10;
  print("\ndynamic: ");
  print(dato);
  print(dato.runtimeType); // Devuelve int
  dato = "Hola";
  print(dato);
  print(dato.runtimeType); // Devuelve String

  // list: Colección ordenada de elementos
  List<String> lenguajes = ["Java", "Dart", "Python"];
  print("\nList: ");
  print(lenguajes);
  print(lenguajes[0]);
  lenguajes[1] = "C";
  print(lenguajes);
  print(lenguajes.length);

  // map: Colección clave valor
  Map<String, int> notas = {
    "Java": 8,
    "Dart": 9
  };
  print("\nMap: ");
  print(notas);
  print(notas["Java"]);
  notas["Dart"] = 10;
  print(notas);

  // Set: Colección sin elementos duplicados
  Set<int> numeros = {1, 2, 3, 4, 5, 6, 7};
  print("\nSet: ");
  print(numeros);
  numeros.add(7); // Se intenta añadir un duplicado
  print(numeros); // No se añade porque ya existe
  numeros.add(8);
  print(numeros);
  print(numeros.contains(5)); // Devuelve bool

  // Record: Agrupa valores de distintos tipos
  (String, int, bool) alumno = ("Miguel Ángel", 24, true);
  print("\nRecord: ");
  print(alumno);
  print(alumno.$1); // Primer campo
  print(alumno.$2); // Segundo campo
  print(alumno.$3); // Tercer campo

  // Parseo seguro:
  print("\nParseo: ");
  String texto = "123";
  print(int.tryParse(texto));
  print(int.tryParse("Hola")); // Imprime null
}