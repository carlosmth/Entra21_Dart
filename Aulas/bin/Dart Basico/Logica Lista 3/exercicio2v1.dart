import 'dart:io';

void main() {
  print('''********** Bem vindo a quitanda do Entra21 **********
  Hoje as maçãs estão com uma promoção muito legal :D
  Preço Normal R\$ 1,30 a unidade;
- acima de 5 maças R\$ 1,15 por unidade;
- acima de 15 maças R\$ 1,05 por unidade;
- acima de 30 maças R\$ 0,98 por unidade.\n''');

  //Entrada do usuário
  print('Quantas maçãs você deseja?');
  String entrada = stdin.readLineSync()!;

  // Variáveis
  double qtd = double.parse(entrada);
  double precoUnitario = 1.30;
  int desconto;
  double preco;
  double descontoTotal;

  //verificando qual desconto devemos aplicar
  if (qtd <= 5) {
    desconto = 0;
  } else if (qtd > 5 && qtd < 15) {
    desconto = 1;
  } else if (qtd > 15 && qtd < 30) {
    desconto = 2;
  } else if (qtd > 30) {
    desconto = 3;
  } else {
    desconto = 0;
    print('Quantidade inválida');
  }
  //gerando o desconto
  switch (desconto) {
    case 1:
      precoUnitario = 1.15;
      break;
    case 2:
      precoUnitario = 1.05;
      break;
    case 3:
      precoUnitario = 0.98;
      break;
    default:
      precoUnitario = 1.30;
      break;
  }

  //aplicando o desconto
  preco = qtd * precoUnitario;
  descontoTotal = qtd * (precoUnitario - 1.30);
  String teste = preco.toStringAsFixed(2);
  String teste2 = descontoTotal.toStringAsFixed(2);
  print('O valor total é R\$$teste e você economizou R\$$teste2');
}
