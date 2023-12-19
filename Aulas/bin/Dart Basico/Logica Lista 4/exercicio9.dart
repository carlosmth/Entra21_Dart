import 'dart:io';

void main() {
  bool contabilizando = true;
  int pessoas = 0;
  int soma = 0;

  while (contabilizando) {
    print('''Informe a idade:''');
    String idadeStr = stdin.readLineSync()!;

    if (idadeStr == 'SAIR' || idadeStr == 'sair') {
      contabilizando = false;
      break;
    }
    int idade = int.parse(idadeStr);
    if (idade > 0) {
      pessoas++;
      soma = soma + idade;
    }
  }
  double media = (soma / pessoas);
  print(
      'A média das idades é ${media.toStringAsFixed(2)}\nForam consultadas $pessoas pessoas');
}
