import 'dart:io';

void main() {
  print('Digite um número inteiro');
  int numero = int.parse(stdin.readLineSync()!);

  int resultado = multiplicaPorCem(numero);
  print('O resultado é $resultado');
}

int multiplicaPorCem(int numero) {
  return numero * 100;
}
