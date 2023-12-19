import 'dart:io';

void main() {
  print('Digite um número: ');
  String numero1 = stdin.readLineSync()!;
  int n1 = int.parse(numero1);

  int restoDaDivisao = n1 % 2;

  if (restoDaDivisao == 0) {
    print('O seu número é par');
  } else {
    print('O seu número é impar');
  }
}
