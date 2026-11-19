/* 
  16.- Ídem con el ejercicio 8
*/

int mcd(int n1, int n2) {
  if (n2 == 0) {
    return n1;
  }

  return mcd(n2, n1 % n2);
}

void main() {
  int calculo = mcd(45, 117);

  print(calculo);
}