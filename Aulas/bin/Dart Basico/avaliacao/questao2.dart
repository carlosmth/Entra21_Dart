import 'dart:io';

void main() {
  print('Por gentileza digite a primeira nota:');
  double nota1 = double.parse(stdin.readLineSync()!);
  print('Por gentileza digite a segunda nota:');
  double nota2 = double.parse(stdin.readLineSync()!);
  print('Por gentileza digite a terceira nota:');
  double nota3 = double.parse(stdin.readLineSync()!);

  double notaFinal1 = nota1 * 0.2;
  double notaFinal2 = nota2 * 0.3;
  double notaFinal3 = nota3 * 0.5;

  double media = notaFinal1 + notaFinal2 + notaFinal3;
  print('Sua média foi ${media.toStringAsFixed(2)}');
  if (media >= 7) {
    print('Aprovado');
  } else if (media >= 5) {
    print('Em recuperação');
  } else {
    print('Reprovado');
  }
}
