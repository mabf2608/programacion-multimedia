/*
  7.- Haz el programa que resuelva las raíces de una ecuación de segundo grado (ax2 + bx + c = 0) a partir de los valores de los coeficientes a, b y c (double). Si las raíces no fueran reales, debe mostrar un mensaje que así lo indique.
*/

import 'dart:math';

void main() {
  double a = 3.3;
  double b = -9.7;
  double c = 12.2;

  // Determina cuántas raíces reales tiene la ecuación.
  double discriminante = b * b - 4 * a * c;

  if (a == 0) {
    print("No es una ecuación de segundo grado.");
  } else if (discriminante < 0) {
    print("La ecuación no tiene raíces reales.");
  } else {
    double raiz1 = (-b + sqrt(discriminante)) / (2 * a);
    double raiz2 = (-b - sqrt(discriminante)) / (2 * a);

    print("Primera raíz: $raiz1");
    print("Segunda raíz: $raiz2");
  }
}