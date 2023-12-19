import 'dart:io';

void main(List<String> args) {
  print('Escolha uma letra: B, I, G ou F');
  String letra = stdin.readLineSync()!.toUpperCase();

  switch (letra) {
    case 'B':
      print('Blumenau');
    case 'I':
      print('Indaial');
    case 'G':
      print('Gaspar');
    case 'F':
      print('Florianópolis');
  }
}
