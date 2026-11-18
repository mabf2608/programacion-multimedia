/* 
  5.- Repitamos el ejercicio de la hora actual y el desplazamiento horario como parámetro entero normal, pero esta vez, la función devolverá la fecha y hora al punto de llamada.
*/

DateTime devolverFechaYHora(int horas) {
  DateTime hoy = DateTime.now();
  DateTime fechaModificada = hoy.add(Duration(hours: horas));
  return fechaModificada;
}

void main() {
  DateTime fechaModificada = devolverFechaYHora(5);
  print(fechaModificada);
}