import 'dart:io';

void main() {
  print('Digite um número: ');
  String numero1 = stdin.readLineSync()!;
  int n1 = int.parse(numero1);

  int ant = n1 - 1;
  int pos = n1 + 1;

  print('O seu número é o $n1!\nO anterior é $ant\nO posterior é $pos');
}
