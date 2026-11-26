/* 
  2.- Haz un programa Dart “adivina un número entre 1 y 100”. El programa deberá extraer un
  número al azar, ir pidiendo al usuario exterior que lo adivine, y darle pistas (“te pasaste”, “te
  quedaste corto”), hasta que lo acierte. En ese momento, mostrará una felicitación, así como
  el número de intentos que te ha costado acertar.

  Probar distintas estrategias. La estrategia más exitosa en promedio es la búsqueda binaria

  Para resolver el resto de ejercicios de esta relación, estudiaremos a fondo la librería
  dart:core. No será necesario importarla, pues está “built-in”, pero se recomienda dar un
  repaso a la documentación al respecto.
*/

import 'dart:io';
import 'dart:math';

void main() {
  var aleatorio = Random();

  // Generamos un número aleatorio entre 1 y 100, ambos incluidos
  int nSecreto = aleatorio.nextInt(100) + 1;
  bool seguir = true;
  int intentos = 0;

  print("---------------------------------------------");
  print("- Bienvenido a: ADIVINA EL NÚMERO ALEATORIO -");
  print("---------------------------------------------");

  while (seguir) {
    stdout.write("Introduce un número entre 1 y 100 para adivinar: ");
    String? respuesta = stdin.readLineSync();
    print("---------------------------------------------");
    int? n;

    //Se cuentan todos los intentos, sean válidos o no.
    intentos++;

    try {
      if (respuesta == null || respuesta.trim().isEmpty) {
        throw const FormatException("Entrada vacía o nula");
      }
      n = int.parse(respuesta.trim());
    } on FormatException catch (e) {
      print("Error de formato: $e");
    } catch (e) {
      print("Ha ocurrido otro error inesperado: $e");
    }

    if (n != null) {
      if (n < 1 || n > 100) {
        print(
          "El número debe ser mayor que 0 y menor que 101 para intentar adivinar.",
        );
      } else {
        if (n < nSecreto) {
          print("Te quedaste corto.");
        } else if (n > nSecreto) {
          print("Te pasaste.");
        } else {
          print(
            "Felicidades! Acertaste el número secreto ($nSecreto) tras $intentos intentos.",
          );
          seguir = false;
        }
      }
    } else {
      print("El número no es válido.");
    }
    print("---------------------------------------------");
  }
}