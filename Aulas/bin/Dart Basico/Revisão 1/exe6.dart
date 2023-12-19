import 'dart:io';

void main() {
  print('Digite um número inteiro:');
  int numero = int.parse(stdin.readLineSync()!);
  const numeroConstante = 50;

  print('O resultado é ${numero * numeroConstante}');
}
