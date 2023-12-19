import 'dart:io';

void main(List<String> args) {
  print('Digite um número inteiro:');
  int numero = int.parse(stdin.readLineSync()!);
  if (numero >= 5) {
    print('Maior ou igual a 5');
  } else {
    print('Menor que 5');
  }
}
