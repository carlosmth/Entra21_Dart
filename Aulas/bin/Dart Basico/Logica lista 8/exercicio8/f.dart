import 'dart:io';

void main() {
  print('Digite um Telefone:');
  String entrada = stdin.readLineSync()!;

  final regex = RegExp(r'^[(]?[0-9]{2}[)]?[0-9]{5}[-]?[0-9]{4}$');

  if (regex.hasMatch(entrada)) {
    print('Telefone válido');
  } else {
    print('Telefone inválido');
  }
}
