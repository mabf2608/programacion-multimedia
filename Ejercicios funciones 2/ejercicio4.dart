/* 
  4.- Haremos un pequeño programa en Dart que defina e inicialice internamente un String y, a continuación, una serie de datos de cada uno de los tipos vistos en la relación 1 (int, double, bool, List, Map, Enum, Set) y concatenamos el String con cada uno de ellos utilizando el operador + y la función toString(). Mostraremos el resultado por pantalla para ver cómo se comporta esta función.
*/

enum RazaPerros { labrador, bodeguero, yorkshire, bulldog }

void main() {
  String datos = "String + dato = ";
  int n = 420;
  double decimal = 30.03;
  bool verdadero = true;
  List<String> verduras = ["Col de bruselas", "Coliflor", "Pepino"];
  Map<String, int> edades = {"Miguel Ángel": 24, "Alicia": 22, "Baltasar": 78};
  RazaPerros perro = RazaPerros.bulldog;
  Set<int> numeros = {1, 2, 3, 4, 5};

  print(datos + n.toString());
  print(datos + decimal.toString());
  print(datos + verdadero.toString());
  print(datos + verduras.toString());
  print(datos + edades.toString());
  print(datos + perro.toString());
  print(datos + numeros.toString());
}