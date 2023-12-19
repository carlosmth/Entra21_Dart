import 'dart:io';

void main(List<String> args) {
  print('Digite um número inteiro:');
  int numero = int.parse(stdin.readLineSync()!);
  if (numero > 15) {
    print('Maior que 15');
  } else if (numero == 15) {
    print('Igual a 15');
  } else {
    print('Menor que 15');
  }
}
