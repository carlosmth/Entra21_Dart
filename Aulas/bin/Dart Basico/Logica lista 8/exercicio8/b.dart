import 'dart:io';

void main() {
  print('Digite um número:');
  String entrada = stdin.readLineSync()!;
  final regex = RegExp(r'(?:100|[1-9]?[0-9])$');

  if (regex.hasMatch(entrada)) {
    print('Número valido');
  } else {
    print('Número inválido');
  }
}
