/* 
  20.- Teniendo en cuenta que la creación de librerías de funciones favorece la reusabilidad de
  las mismas, recoge todas las funciones del ejercicio 11 y ponlas en un archivo. A
  continuación haz una versión de ese ejercicio, en el que importes la librería y te ahorres de
  declarar dichas funciones.
*/

import "lib11.dart";

void main() {
  List<double> temperaturas = [22.5, 24.0, 19.8, 25.3, 21.0, 18.4, 23.1];
  double max = obtenerMaximo(temperaturas);
  double min = obtenerMinimo(temperaturas);
  double media = mediaValores(temperaturas);

  print("Valor Máximo: $max | Valor Mínimo: $min | Media: $media");
}