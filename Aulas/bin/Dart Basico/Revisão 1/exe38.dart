import 'dart:io';

void main() {
  List numeros = [];
  for (int i = 1; i < 6; i++) {
    print('Digite um número:');
    int numero = int.parse(stdin.readLineSync()!);
    numeros.add(numero);
  }
  print('');
  for (int numero in numeros) {
    print(numero);
  }
}
