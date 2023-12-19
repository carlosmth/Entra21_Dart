import 'dart:io';

void main() {
  print('Digite uma palavra:');
  String entrada = stdin.readLineSync()!;
  // final regex = RegExp(r'^\S+$');
  // final regex = RegExp(r'^[A-z]+$');
  final regex = RegExp(r'^[A-Za-z]+$');

  if (regex.hasMatch(entrada)) {
    print('Palavra válida');
  } else {
    print('Palavra com espaço');
  }
}
