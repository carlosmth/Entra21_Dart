import 'dart:io';

void main() {
  print('Qual o custo de fabricação?');
  String entrada = stdin.readLineSync()!;

  double custoDeFabrica = double.parse(entrada);
  double distribuidor = custoDeFabrica * 0.28;
  double impostos = custoDeFabrica * 0.45;

  double preco = (custoDeFabrica + distribuidor + impostos);

  print('O preço final do carro é de ${preco.toStringAsFixed(2)}');
}
