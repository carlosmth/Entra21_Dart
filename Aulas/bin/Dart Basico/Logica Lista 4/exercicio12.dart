import 'dart:io';

void main() {
  int entradas = 1;
  double somaNotas = 0;

  while (entradas <= 3) {
    print(
        'Precisamos que informe 3 notas!\nEste é a nota de posição $entradas,\nInforme uma nota:');
    double nota = double.parse(stdin.readLineSync()!);

    if (nota >= 0) {
      somaNotas += nota;
    }
    entradas++;
  }
  double media = somaNotas / 3;
  print(
      '\n\nColeta de dados finalizada!\nSegue abaixo resultados:\nMédia das notas: ${media.toStringAsFixed(1)}\n\n');
}
