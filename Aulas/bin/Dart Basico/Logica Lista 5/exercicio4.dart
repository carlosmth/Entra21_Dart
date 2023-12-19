import 'dart:io';

void main() {
  print('Informe um número:');
  int numero1 = int.parse(stdin.readLineSync()!);

  print('Informe outro número:');
  int numero2 = int.parse(stdin.readLineSync()!);

  int resultado = numeroMenor(numero1, numero2);
  print('O menor é $resultado');
}

numeroMenor(int numero1, int numero2) {
  if (numero1 > numero2) {
    return numero2;
  }
  return numero1;
}
