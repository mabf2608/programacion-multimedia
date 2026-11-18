/* 
  3.- Vamos a hacer un pequeño programa Dart con una función que muestre el nombre y el id de un empleado que se les pasa como parámetros, pero sabiendo que, tanto uno como otro podrían no saberse, en cuyo caso, se mostrará el nombre ‘desconocido’ y/o el id 999, que serán una suerte de valores por defecto. (Función con parámetros opcionales, y sin devolución de valor de retorno)
*/

void datosEmpleado([String nombre = "desconocido", int id = 999]) {
  print("Nombre Empleado: $nombre | ID: $id");
}

void main() {
  datosEmpleado("Miguel", 1);
  datosEmpleado("Irene");
  datosEmpleado();
}
