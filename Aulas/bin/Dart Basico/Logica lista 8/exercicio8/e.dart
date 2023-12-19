import 'dart:io';

void main() {
  print('Digite um CPF:');
  String entrada = stdin.readLineSync()!;

  final regex = RegExp(r'^[0-9]{3}[.]?[0-9]{3}[.]?[0-9]{3}[-]?[0-9]{2}$');

  if (regex.hasMatch(entrada)) {
    print('CPF válido');
  } else {
    print('CPF inválido');
  }
}
