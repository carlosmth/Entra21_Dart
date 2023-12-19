import 'dart:io';

void main(List<String> args) {
  print('Digite um nome em minúsculo');
  String nome = stdin.readLineSync()!.toUpperCase();

  if (nome == 'MARIA') {
    print(true);
  }
}
