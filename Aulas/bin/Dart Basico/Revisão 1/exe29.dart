import 'dart:io';

void main(List<String> args) {
  int soma = 0;
  for (int i = 0; i < 5; i++) {
    print('Informe um número inteiro');
    int numero = int.parse(stdin.readLineSync()!);
    soma += numero;
  }
  print('A soma é $soma');
}
