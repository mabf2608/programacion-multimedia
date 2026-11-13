/* 
  5.-  Haz un pequeño programa en Dart en el que, a partir de las medidas de los tres lados de
  un triángulo (double) con valores asignados en la propia declaración, dictamine si éste es
  equilátero, isósceles o escaleno.
*/

void main() {
  double lado1 = 7.1;
  double lado2 = 6.3;
  double lado3 = 10.7;

  // Comprobación de que un triángulo es válido
  if (lado1 + lado2 <= lado3 ||
      lado1 + lado3 <= lado2 ||
      lado2 + lado3 <= lado1) {
    print("No es un triángulo válido");
  } else if (lado1 == lado2 && lado2 == lado3) {
    print("Es un triángulo equilátero");
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print("Es un triángulo isósceles");
  } else {
    print("Es un triángulo escaleno");
  }
}