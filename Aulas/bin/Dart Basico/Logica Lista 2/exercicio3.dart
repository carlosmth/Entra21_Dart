import 'dart:io';

void main() {
  print('Digite um número: ');
  String numero1 = stdin.readLineSync()!;
  int n1 = int.parse(numero1);

  if (n1 >= 0) {
    print('O seu número é positivo');
  } else {
    print('O seu número é negativo');
  }
}
