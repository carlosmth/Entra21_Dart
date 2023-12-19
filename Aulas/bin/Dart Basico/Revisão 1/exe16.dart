import 'dart:io';

void main(List<String> args) {
  print('Digite um número inteiro');
  int numero = int.parse(stdin.readLineSync()!);

  switch (numero) {
    case 1:
      print('É um');
    case 2:
      print('É dois');
    case 3:
      print('É três');
    default:
      print('Inválido');
  }
}
