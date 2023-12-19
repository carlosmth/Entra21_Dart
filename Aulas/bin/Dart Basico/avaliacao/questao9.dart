import 'dart:io';

void main() {
  double? numero1;
  double? numero2;
  String operacao = '';

  while (numero1 == null) {
    print('Digite o primeiro número');
    numero1 = double.tryParse(stdin.readLineSync()!);
    if (numero1 == null) {
      print('Número inválido');
    }
  }
  while (numero2 == null) {
    print('Digite o segundo número');
    numero2 = double.tryParse(stdin.readLineSync()!);
    if (numero2 == null) {
      print('Número inválido');
    }
  }

  while (operacao == '') {
    print(
        'Por gentileza escolha uma operação\n\n1 - Soma\n2 - Sbtração\n3 - Divisão\n4 - Multiplicação\n');
    operacao = stdin.readLineSync()!;
    switch (operacao) {
      case '1':
        operacao = 'Soma';
      case '2':
        operacao = 'Subtração';
      case '3':
        operacao = 'Divisão';
      case '4':
        operacao = 'Multiplicação';
      default:
        print('Operação inválida');
        operacao = '';
    }
  }
  double? resultado = realizaCalculo(numero1, numero2, operacao);
  print('O resultado é ${resultado!.toStringAsFixed(2)}');
}

// ignore: body_might_complete_normally_nullable
double? realizaCalculo(double numero1, double numero2, String operacao) {
  switch (operacao) {
    case 'Soma':
      return numero1 + numero2;
    case 'Subtração':
      return numero1 - numero2;
    case 'Divisão':
      return numero1 / numero2;
    case 'Multiplicação':
      return numero1 * numero2;
  }
}
