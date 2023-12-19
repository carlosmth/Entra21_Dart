import 'dart:io';

void main(List<String> args) {
  print('Digite um número inteiro:');
  int numero = int.parse(stdin.readLineSync()!);
  if (numero == 5 || numero == 50) {
    print('Válido');
  } else {
    print('Inválido');
  }
}
