/*
  16.- Declara en Dart un lista con los días laborables en Español y muéstrala. Añádele los
  dos días del fin de semana. Recorre la lista día por día y muéstralos por pantalla. Haz lo
  mismo con un Map que contenga una serie de nombres y edades. En estos dos últimos
  casos, usa forEach.
*/

void main() {
  //List:
  print("\nList:");
  List<String> diasSemana = [
    "Lunes",
    "Martes",
    "Miércoles",
    "Jueves",
    "Viernes",
  ];
  print(diasSemana);

  diasSemana.add("Sábado");
  diasSemana.add("Domingo");

  diasSemana.forEach((dia) {
    print(dia);
  });

  //Map:
  print("\nMap:");
  Map<String, int> personas = {
    "Miguel Ángel": 24,
    "David": 15,
    "Manuel": 19,
    "Iris": 7,
  };

  personas.forEach((clave, valor) {
    print("${clave}: ${valor}");
  });
}
