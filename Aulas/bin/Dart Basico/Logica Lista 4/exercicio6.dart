import 'dart:io';

void main() {
  print('Qual o número?');
  int entrada = int.parse(stdin.readLineSync()!);
  print('');

  for (int i = 1; i < 11; i++) {
    print('$entrada x $i = ${entrada*i}');
  }
}