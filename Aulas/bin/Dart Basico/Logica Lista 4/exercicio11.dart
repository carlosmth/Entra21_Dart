import 'dart:io';

void main() {
  int entradas = 1;
  int entre = 0;

  while (entradas <= 10) {
    print(
        'Precisamos que informe 10 números!\nEste é o numero de posição $entradas,\nInforme um número:');
    int numero = int.parse(stdin.readLineSync()!);

    if (numero > 10 && numero < 20) {
      entre++;
    }
    entradas++;
  }
  print(
      '\n\nColeta de dados finalizada!\nSegue abaixo resultados:\nQuantidade de N° entre 10 e 20: $entre\n\n');
}
