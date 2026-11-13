/*
  20.- Haz un programa Dart que realice estadísticas sobre el tiempo. Declararás un Map que
  contenga como claves los días de la semana y como valores las temperaturas máximas.
  Calcula y muestra la mayor y la menor de las máximas, así como los días en que se
  produjeron. Calcula también la media aritmética de las máximas.
*/

void main() {
  Map<String, double> temperaturasMax = {
    "Lunes": 23.8,
    "Martes": 24.5,
    "Miércoles": 25.2,
    "Jueves": 26.1,
    "Viernes": 24.9,
    "Sábado": 27.3,
    "Domingo": 25.6,
  };

  double maxima = temperaturasMax.values.first;
  double minima = temperaturasMax.values.first;
  double suma = 0.0;
  String diaMax = temperaturasMax.keys.first;
  String diaMin = temperaturasMax.keys.first;

  for (var temperatura in temperaturasMax.entries) {
    suma += temperatura.value;

    if (maxima < temperatura.value) {
      maxima = temperatura.value;
      diaMax = temperatura.key;
    }

    if (minima > temperatura.value) {
      minima = temperatura.value;
      diaMin = temperatura.key;
    }
  }

  double media = suma / temperaturasMax.length;

  print("Temperatura máxima: $maxima - $diaMax");
  print("Temperatura mínima: $minima - $diaMin");
  print("Media de temperaturas: ${media.toStringAsFixed(2)}");
}