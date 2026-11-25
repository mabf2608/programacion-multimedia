/* 
  3.- Vamos a declarar en un programa Dart un String al que inicializamos con una frase. Examinaremos el contenido del String para saber si está todo en mayúsculas, en minúsculas o ni lo uno ni lo otro. ( toUpperCase() y toLowerCase() ). Investigaremos y probaremos también cómo se crea un string multilínea.
*/

void main() {
  String frase = """
    linea 1
    linea 2
    linea 3
  """;
  
  if (frase.trim() == frase.trim().toUpperCase()) {
    print("La frase está en mayúsculas.");
  } else if (frase.trim() == frase.trim().toLowerCase()) {
    print("La frase está en minúsculas.");
  } else {
    print("Ni lo uno ni lo otro.");
  }
}