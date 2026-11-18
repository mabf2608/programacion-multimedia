/* 
  11.- Haz un pequeño programa en Dart que declare una lista de temperaturas máximas. A continuación, deberá invocar a una función que reciba como parámetro a esa lista y calcule y devuelva cual es la temperatura máxima. Haz otra con el mismo esquema de parámetros y devolución, que devuelva la mínima, y otra para la media.
    Pregunta: estas funciones devuelven un valo numérico que queda descontextualizado en el caso de la máxima y la mínima, perdiendo el dato de en qué día se produjeron. ¿Cómo lo solucionarías? Hay varias opciones
*/

/*
  Respuesta - La opción más recomendable es devolver un Record ({String dia, double temperatura}), ya que permite agrupar ambos valores de forma tipada e inmutable. Aunque también se podrían usar un Map o dos listas paralelas
*/

double obtenerMaximo(List<double> temperaturas) {
  double max = temperaturas.first;
  for (double t in temperaturas) {
    if (t > max) {
      max = t;
    }
  }
  return max;
}

double obtenerMinimo(List<double> temperaturas) {
  double min = temperaturas.first;
  for (double t in temperaturas) {
    if (t < min) {
      min = t;
    }
  }
  return min;
}

double mediaValores(List<double> temperaturas) {
  double suma = 0;
  for (double t in temperaturas) {
    suma += t;
  }
  double media = suma / temperaturas.length;
  return media;
}

void main() {
  List<double> temperaturas = [22.5, 24.0, 19.8, 25.3, 21.0, 18.4, 23.1];
  double max = obtenerMaximo(temperaturas);
  double min = obtenerMinimo(temperaturas);
  double media = mediaValores(temperaturas);

  print("Valor Máximo: $max | Valor Mínimo: $min | Media: $media");
}