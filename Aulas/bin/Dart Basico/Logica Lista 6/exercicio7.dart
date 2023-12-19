import 'dart:io';

void main() {
  List<double> valorTotal = [];
  List<String> pedido = [];
  exibeCardapio();
  capturaPedido(pedido, valorTotal);
  exibePedidoFinal(pedido, valorTotal);
}

exibeCardapio() {
  print('Bem vindo ao Restaurante Comida da casa');
  print('''Segue abaixo nosso cardápio:
1 - Frango com quiabo   - R\$15,00
2 - Leitão à pururuca   - R\$20,00
3 - Galinhada com pequi - R\$18,00
4 - Virado à paulista   - R\$10,00
5 - Picadinho de carne  - R\$12,00
6 - Feijoada            - R\$11,50
7 - Arroz carreteiro    - R\$15,50
8 - Acarajé             - R\$5,00
9 - Strogonoff          - R\$7,00
10 - Prato Feito        - R\$18,50
''');
  print('Para finalizar o pedido basta digitar 11');
}

capturaPedido(pedido, valorTotal) {
  String entrada = '';
  while (entrada != '11') {
    print('Qual o código do item desejado?');
    entrada = stdin.readLineSync()!;
    switch (entrada) {
      case '1':
        pedido.add('Frango com quiabo');
        valorTotal.add(15.00);

      case '2':
        pedido.add('Leitão à pururucao');
        valorTotal.add(20.00);

      case '3':
        pedido.add('Galinhada com pequi');
        valorTotal.add(18.00);

      case '4':
        pedido.add('Virado à paulista');
        valorTotal.add(10.00);

      case '5':
        pedido.add('Picadinho de carne');
        valorTotal.add(12.00);

      case '6':
        pedido.add('Feijoada');
        valorTotal.add(11.50);

      case '7':
        pedido.add('Arroz carreteiro');
        valorTotal.add(15.50);

      case '8':
        pedido.add('Acarajé');
        valorTotal.add(5.00);

      case '9':
        pedido.add('Strogonoff');
        valorTotal.add(7.00);

      case '10':
        pedido.add('Prato Feito');
        valorTotal.add(18.50);

      case '11':
        break;

      default:
        print('Código do produto não localizado, tente novamente');
    }
  }
}

exibePedidoFinal(pedido, valorTotal) {
  double totalDoPedido = 0;

  print('O seu pedido foi:');
  for (String item in pedido) {
    print(item);
  }

  for (double preco in valorTotal) {
    totalDoPedido += preco;
  }

  print(
      'O valor total do pedido foi de R\$${totalDoPedido.toStringAsFixed(2)}');
}
