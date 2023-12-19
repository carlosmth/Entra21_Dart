import 'dart:io';

void main(List<String> args) {
  String nome = '';
  print('Para finalizar a aplicação digite "sair"');
  do {
    print('Informe um nome');
    nome = stdin.readLineSync()!.toUpperCase();
  } while (nome != 'SAIR');
}
