import 'dart:io';

void main() {
  print('Informe a primeira nota:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Informe a segunda nota:');
  double nota2 = double.parse(stdin.readLineSync()!);

  print('Informe a terceira nota:');
  double nota3 = double.parse(stdin.readLineSync()!);

  double media = calculaMedia(nota1, nota2, nota3);
  String status = statusAluno(media);

  print('A média final é ${media.toStringAsFixed(2)}');
  print('O aluno está $status');
}

calculaMedia(double nota1, double nota2, double nota3) {
  return (nota1 + nota2 + nota3) / 3;
}

statusAluno(double media) {
  if (media.toInt() >= 7) {
    return 'APROVADO';
  } else if (media.toInt() >= 5) {
    return 'EM RECUPERAÇÃO';
  }
  return 'REPROVADO';
}
