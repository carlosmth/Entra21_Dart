import 'dart:io';

void main() {
  print('''********** Bem vindo a feira do Entra21 **********
  Aqui está uma lista dos nossos produtos:
  1 - Fritas R\$30,00
  2 - X-Salada R\$25,00
  3 - Hot-Dog R\$12,00
  4 - Coca-cola lata R\$8,00
  5 - Água mineral R\$2,00\n''');

  print('informe o código do produto que você deseja:');
  int codigo = int.parse(stdin.readLineSync()!);

  print('Quanto você tem em dinheiro?');
  double valorPago = double.parse(stdin.readLineSync()!);

  double custo;

  switch (codigo) {
    case 1:
      custo = 30.00;
      break;
    case 2:
      custo = 25.00;
      break;
    case 3:
      custo = 12.00;
      break;
    case 4:
      custo = 8.00;
      break;
    case 5:
      custo = 2.00;
      break;
    default:
      custo = 0.00;
      print('Código inválido, por gentileza digite um código válido');
      break;
  } 
  if (custo != 0) {
    if (custo <= valorPago) {
      double troco = valorPago - custo;
      print('Valor total da compra:R\$${custo.toStringAsFixed(2)}, o seu troco é de R\$${troco.toStringAsFixed(2)}');
    } else {
      print('Valor insuficiente para finalizar a compra');
    }
  }
}
