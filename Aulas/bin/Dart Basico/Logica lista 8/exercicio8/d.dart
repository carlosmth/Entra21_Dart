import 'dart:io';

void main() {
  print('Digite uma palavra:');
  String entrada = stdin.readLineSync()!;

  final regex = RegExp(r'^[A-Za-z0-9][A-Za-z0-9._-]*[A-Za-z0-9]*$');

  if (regex.hasMatch(entrada)) {
    print('Palavra válida');
  } else {
    print('Palavra inválida');
  }
}
