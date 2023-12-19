import 'dart:io';

void main(List<String> args) {
  print('Digite um nome:');
  String nome = stdin.readLineSync()!.toLowerCase();
  print(nome);
}
