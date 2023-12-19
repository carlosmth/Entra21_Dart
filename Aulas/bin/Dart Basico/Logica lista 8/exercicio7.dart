//lista 8

import 'dart:io';

void main(List<String> args) {
  print('Informe uma frase e coloque uma palavra entre parenteses no meio da frase');
  String frase = stdin.readLineSync()!;

  print(frase.substring(frase.indexOf('(') + 1, frase.lastIndexOf(')')));
}
