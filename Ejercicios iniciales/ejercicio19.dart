/*
  19.- Haz un programa Dart que declare un Map con nombres y edades, y lo recorra
  mostrando todo (clave-valor), que lo recorra mostrando solo las claves, y también, aparte,
  mostrando solo los valores. ¿Qué pasaría si sabemos que alguna de las edades no están
  inicializadas?
*/

void main() {
  // Si alguna edad no está inicializada da error porque int no permite null.
  // Se soluciona utilizando int? para permitir valores nulos.
  
  Map<String, int?> personas = {
    "Miguel Ángel": 24,
    "David": 15,
    "Manuel": 19,
    "Iris": null,
  };

  personas.forEach((clave, valor) {
    print("${clave}: ${valor ?? "Edad Desconocida"}");
  });

  print("\nClaves:");
  for (var persona in personas.entries) {
    print("${persona.key}");
  }

  print("\nValores:");
  for (var persona in personas.entries) {
    print("${persona.value ?? "Edad Desconocida"}");
  }
}