/* 
  3.- Declara la constante pi en Dart. Utiliza para ello la palabra reservada const.

  Declara también otra constante llamada diasDelAnyo que pueda contener 365 o 366 días
  dependiendo de si el año es bisiesto o no. Deberás utilizar para ésta final. Prueba hacerlo
  con const ¿qué ocurre?
*/

void main() {
  const double pi = 3.1416;
  int anyo = 2024;
  final int diasDelAnyo;

  if ((anyo % 4 == 0 && anyo % 100 != 0) || anyo % 400 == 0) {
    diasDelAnyo = 366;
  } else {
    diasDelAnyo = 365;
  }

  print('PI: $pi');
  print('Días del año: $diasDelAnyo');

  // Se comenta porque no se puede utilizar const ya que anyo no es
  // una constante conocida en tiempo de compilación y da error: 
  // const int prueba = anyo % 4 == 0 ? 366 : 365;
}