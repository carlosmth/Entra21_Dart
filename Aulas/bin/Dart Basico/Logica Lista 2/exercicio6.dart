import 'dart:io';

void main() {
  print('Calculadora Surpresa');

  print('Digite o primeiro número: ');
  String numero1 = stdin.readLineSync()!;
  double n1 = double.parse(numero1);

  print('Digite o segundo número: ');
  String numero2 = stdin.readLineSync()!;
  double n2 = double.parse(numero2);

  double soma = n1 + n2;
  String somaFinal = soma.toStringAsFixed(1);

  double mult = n1 * n2;
  String multFinal = mult.toStringAsFixed(1);

  if (n1 == n2) {
    print('Os números são iguais, e o resultado é $somaFinal');
  } else {
    print('Os números são diferentes, e o resultado é $multFinal');
  }
}
