import 'dart:io';

void main() {
  print('Qual é o seu salário? ');
  String salarioStr = stdin.readLineSync()!;
  double salario = double.parse(salarioStr);

  print('Qual é o percentual do ajuste?');
  String percentualStr = stdin.readLineSync()!;
  double percentual = double.parse(percentualStr);

  double reajuste = salario * (percentual / 100);
  String reajusteStr = reajuste.toStringAsFixed(2);

  double salarioReajustado = salario + reajuste;
  String salarioFinal = salarioReajustado.toStringAsFixed(2);

  print('O Reajuste foi de $reajusteStr\nO salário reajustado é $salarioFinal');
}
