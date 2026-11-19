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