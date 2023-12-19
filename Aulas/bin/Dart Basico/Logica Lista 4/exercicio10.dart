import 'dart:io';

void main() {
  int entradas = 1;
  int par = 0;
  int impar = 0;

  while (entradas <= 10) {
    print(
        'Precisamos que informe 10 números!\nEste é o numero de posição $entradas,\nInforme um número:');
    int numero = int.parse(stdin.readLineSync()!);

    if (numero % 2 == 0) {
      print('Número registrado');

      par++;
    } else if (numero % 2 == 1) {
      print('número registrado');

      impar++;
    }
    entradas++;
  }
  print(
      '\n\nColeta de dados finalizada!\nSegue abaixo resultados:\nQuantidade de N° Par: $par\nQuantidade de N° Ímpar: $impar\n\n');
}
