import 'dart:io';

void main() {
  print('Informe o primeiro valor:');
  double numero1 = double.parse(stdin.readLineSync()!);

  print('Informe o segundo valor:');
  double numero2 = double.parse(stdin.readLineSync()!);

  print(
      'Informe a operaçao desejada:\nSoma\nSubtracao\nMultiplicacao\nDivisao');
  String operacao = (stdin.readLineSync()!).toUpperCase();

  executar(numero1, numero2, operacao);
}

executar(double numero1, double numero2, String operacao) {
  double resultado = 0;

  if (operacao == 'SOMA') {
    resultado = somar(numero1, numero2);
  } else if (operacao == 'SUBTRACAO') {
    resultado = subtrair(numero1, numero2);
  } else if (operacao == 'MULTIPLICACAO') {
    resultado = multiplicar(numero1, numero2);
  } else if (operacao == 'DIVISAO') {
    resultado = dividir(numero1, numero2);
  } else {
    print('Operação inválida');
  }
  print('O resultado é ${resultado.toInt()}');
}

somar(double numero1, double numero2) {
  return numero1 + numero2;
}

subtrair(double numero1, double numero2) {
  return numero1 - numero2;
}

multiplicar(double numero1, double numero2) {
  return numero1 * numero2;
}

dividir(double numero1, double numero2) {
  return numero1 / numero2;
}
