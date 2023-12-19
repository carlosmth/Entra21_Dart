import 'dart:io';

void main() {
  print('Qual a quantidade de maçãs?');
  String entrada = stdin.readLineSync()!;

  int qtd = int.parse(entrada);
  double precoUnitario = 1.30;

  if (qtd > 5 && qtd < 15) {
    double descUnitario = 0.15;
    double preco = qtd * (precoUnitario - descUnitario);
    double descontoTotal = qtd * descUnitario;
    print('O valor total é R\$${preco.toStringAsFixed(2)} e você economizou R\$${descontoTotal.toStringAsFixed(2)}');
  } else if (qtd > 15 && qtd < 30) {
    double descUnitario = 0.25;
    double preco = qtd * (precoUnitario - descUnitario);
    double descontoTotal = qtd * descUnitario;
    print('O valor total é R\$${preco.toStringAsFixed(2)} e você economizou R\$${descontoTotal.toStringAsFixed(2)}');
  } else {
    double descUnitario = 0.32;
    double preco = qtd * (precoUnitario - descUnitario);
    double descontoTotal = qtd * descUnitario;
    print('O valor total é R\$${preco.toStringAsFixed(2)} e você economizou R\$${descontoTotal.toStringAsFixed(2)}');
  }
}
