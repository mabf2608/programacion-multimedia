/* 
  17.- Ídem con el ejercicio 9
*/

int cocienteDivision(int n1, int n2) {
  if (n2 > n1) {
    return 0;
  }

  return 1 + cocienteDivision(n1 - n2, n2);
}

int restoDivision(int n1, int n2) {
  if (n2 > n1) {
    return n1;
  }

  return restoDivision(n1 - n2, n2);
}

void main() {
  int n1 = 27;
  int n2 = 4;
  int cociente = cocienteDivision(n1, n2);
  int resto = restoDivision(n1, n2);

  print("División $n1 / $n2 = Cociente: $cociente | Resto: $resto");
}