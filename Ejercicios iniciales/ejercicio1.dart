/* 
  1.- Vamos a experimentar un poco con la declaración de tipos y la función print para mostrar
  mensajes y datos por pantalla: 
    ● haz un programa inicial que muestre el mensaje “Hola mundo”.
    ● declara una variable de tipo int inicializado a 1, y otro String con tu nombre.
    ● haz que se muestre el resultado de una operación con esta variable numérica y otro
      con la de tipo String.
    ● investiga y experimenta las distintas formas de incluir un comentario en el código.
*/

void main() {
  print("\nHola mundo");

  int miNumero = 1;
  String miNombre = "Miguel Ángel";

  print("Resultado de la suma: ${10 + miNumero}");
  print("Mi nombre completo es $miNombre" + " Bonilla Fernández");

  // Este comentario solo abarca esta línea

  /* 
   Este comentario abarca
   varias líneas seguidas
  */

  /// Documenta funciones, clases o variables importantes
}