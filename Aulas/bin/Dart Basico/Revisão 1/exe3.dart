import 'dart:io';

void main() {
  print('Digite um nome:');
  String nome = stdin.readLineSync()!;
  print('O nome digitado foi: $nome');
}
