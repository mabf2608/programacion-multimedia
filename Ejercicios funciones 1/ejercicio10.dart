/* 
  10.- Haz un programa que declare e inicialice un número entero positivo e invoque a una función que lo convierta en binario y lo devuelva en forma de cadena (String) de ceros y unos. El programa deberá mostrar el resultado por pantalla. Una vez que funcione adecuadamente, modifica la función para que tenga un segundo parámetro, la base de conversión, que será 2 por defecto, pero que pueda ser cualquier otra, hasta la base 8.
    Pregunta: qué habría que añadirle a la función para que también pudiera convertir a base 16?
*/

/*
  Respuesta - Para soportar base 16 (hexadecimal), los restos entre 10 y 15 deben traducirse a las letras A–F. Se añade una cadena de referencia con los 16 símbolos (const String digitos = "0123456789ABCDEF";) y se toma el carácter por índice (digitos[n % base]).
*/

String pasarABase(int n, [int base = 2]) {
  if (n == 0) {
    return "0";
  }
  
  String nBase = "";
  while (n > 0) {
    nBase = (n % base).toString() + nBase;
    n = n ~/ base;
  }

  return nBase;
}

void main() {
  int base = 8;
  int n = 824;
  String conversion = pasarABase(n, base);

  print("$n en base $base = $conversion");
}
