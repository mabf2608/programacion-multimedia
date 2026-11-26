/*
  12.- Crea una librería con todas estas funciones llamada validaciones.dart, y prueba a
  importarla desde cada programa anterior. Investiga la documentación oficial para más
  posibilidades
*/

//Función que valida si la cadena recibida como parámetro está codificada en RGB
bool validacionRGB(String cadena) {
  RegExp rgb = RegExp(r"^#(?:[a-fA-F0-9]{3}){1,2}$");
  return rgb.hasMatch(cadena);
}

//Función que valida si la cadena recibida como parámetro tiene formato de URL
bool validacionURL(String cadena) {
  RegExp url = RegExp(
    r"^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$",
  );
  return url.hasMatch(cadena);
}

//Función que valida si la cadena recibida como parámetro tiene formato de Email
bool validacionEmail(String cadena) {
  RegExp email = RegExp(
    r"^[a-zA-Z0-9._+-]{1,256}@[a-zA-Z0-9-]{1,256}\.[a-zA-Z]{2,}$",
  );
  return email.hasMatch(cadena);
}

//Función que valida si la cadena recibida como parámetro tiene formato de DNI
bool validacionDNI(String cadena) {
  RegExp dni = RegExp(r"^[0-9]{8}[TRWAGMYFPDXBNJZSQVHLCKE]{1}$");
  return dni.hasMatch(cadena);
} 