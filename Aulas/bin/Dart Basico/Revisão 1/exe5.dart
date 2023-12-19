import 'dart:io';

void main() {
  print('Digite um número inteiro:');
  int numero1 = int.parse(stdin.readLineSync()!);
  print('Digite outro número inteiro:');
  int numero2 = int.parse(stdin.readLineSync()!);

  print('O soma dos números é ${numero1 + numero2}');
}
