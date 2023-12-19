import 'dart:io';

void main() {
  print('Calculadora de Média');
  print('Digite a primeira nota: ');
  String nota1 = stdin.readLineSync()!;
  double n1 = double.parse(nota1);

  print('Digite a primeira nota: ');
  String nota2 = stdin.readLineSync()!;
  double n2 = double.parse(nota2);

  print('Digite a primeira nota: ');
  String nota3 = stdin.readLineSync()!;
  double n3 = double.parse(nota3);

  double media = (n1 + n2 + n3) / 3;
  String mediaFinal = media.toStringAsFixed(1);

  if (media > 7) {
    print('Sua média é $mediaFinal\nParabéns, você foi aprovado');
  } else {
    print('Sua média é $mediaFinal\nVocê foi reprovado');
  }
}
