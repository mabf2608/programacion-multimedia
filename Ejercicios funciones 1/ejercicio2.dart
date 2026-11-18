/* 
  2.- Haremos una nueva versión del programa y la función anterior para que ésta última reciba un parámetro: las horas hacia adelante o atrás a partir del momento actual, y calcule
  y muestre esa fecha/hora. Investiga en la librería dart:core los métodos disponibles para el manejo de DateTime. Utiliza el método add en este caso, pero experimenta otros.
*/

void mostrarFechaYHora(int horas) {
  DateTime hoy = DateTime.now();
  DateTime fechaModificada = hoy.add(Duration(hours: horas));
  print(fechaModificada);
}

void main() {
  mostrarFechaYHora(-5);
  mostrarFechaYHora(3);
  mostrarFechaYHora(0);
}
