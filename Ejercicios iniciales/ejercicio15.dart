/*
  15.- Versiona el programa anterior para que simule el lanzamiento de un dado un número n
  de veces (n>100) y muestre la frecuencia con la que se ha obtenido cada resultado.

  Observa que, cuanto mayor sea n, más se aproximan las frecuencias, si el dado no está trucado.

  ¿Qué habría que hacer para que, por ejemplo el 6, saliera 3 veces más que los demás
  resultados posibles? (simulación de dado trucado)
*/

import 'dart:math';

void main() {
  int n = 1000;
  Random random = Random();
  List<int> frecuencias = [0, 0, 0, 0, 0, 0];

  for (int i = 1; i <= n; i++) {
    int dado = random.nextInt(6) + 1;
    frecuencias[dado - 1]++;
  }
  print(frecuencias);

  //Para que el 6 salga 3 veces más yo lo haría lanzando un dado del 1 al 8 en vez del 1 al 6,
  //y usando un if para que el 7 y 8 cuenten como 6.
  
  /*
  int dado = random.nextInt(8) + 1;
  if (dado > 6) {
    dado = 6;
  }
  frecuencias[dado - 1]++;
  */
}
