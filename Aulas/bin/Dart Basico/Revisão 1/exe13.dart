import 'dart:io';

void main(List<String> args) {
  print('Digite um número inteiro:');
  int numero = int.parse(stdin.readLineSync()!);
  if (numero > 18 && numero < 60) {
    print('Permitido');
  } else {
    print('Não permitido');
  }
}
