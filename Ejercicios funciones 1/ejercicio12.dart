/* 
  12.- Soluciona el problema anterior mediante la declaración de un Map y haciendo que cada
  función, en lugar de devolver valores, muestran los resultados por pantalla ellas mismas.
*/

void obtenerMaximo(Map<String, double> temperaturas) {
  String diaMax = temperaturas.keys.first;
  double tempMax = temperaturas.values.first;
  for (var t in temperaturas.entries) {
    if (t.value > tempMax) {
      diaMax = t.key;
      tempMax = t.value;
    }
  }
   print("Valor Máximo: $tempMax | Día: $diaMax");
}

void obtenerMinimo(Map<String, double> temperaturas) {
  String diaMin = temperaturas.keys.first;
  double tempMin = temperaturas.values.first;
  for (var t in temperaturas.entries) {
    if (t.value < tempMin) {
      diaMin = t.key;
      tempMin = t.value;
    }
  }
   print("Valor Mínimo: $tempMin | Día: $diaMin");
}

void mediaValores(Map<String, double> temperaturas) {
  double suma = 0;
  for (var t in temperaturas.entries) {
    suma += t.value;
  }
  double media = suma / temperaturas.length;
  print("Media: $media");
}

void main() {
  Map<String, double> temperaturas = {
    "Lunes": 22.5,
    "Martes": 24.0,
    "Miercoles": 19.8,
    "Jueves": 25.3,
    "Viernes": 21.0,
    "Sabado": 18.4,
    "Domingo": 23.1};

  obtenerMaximo(temperaturas);
  obtenerMinimo(temperaturas);
  mediaValores(temperaturas);
}