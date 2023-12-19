import 'dart:io';

void main(List<String> args) {
  int numero = 0;
  do {
    print('Informe um número inteiro');
    numero = int.parse(stdin.readLineSync()!);
    if (numero <= 5) {
      print('Digite um novo número');
    }
  } while (numero < 6);
}
