import 'dart:io';

void main(List<String> args) {
  print('Digite um número inteiro:');
  int numero = int.parse(stdin.readLineSync()!);
  if (numero >= 10) {
    print('Maior ou igual a 10');
  }
}
