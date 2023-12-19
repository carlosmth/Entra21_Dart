import 'dart:io';

void main() {
  print(
      'Digite o número correspondente a um mês do ano\n\n1 - Janeiro\n2 - Fevereiro\n3 - Março\n4 - Abril\n5 - Maio\n6 - Junho\n7 - Julho\n8 - Agosto\n9 - Setembro\n10 - Outubro\n11 - Novembro\n12 - Dezembro\n\n');
  String mesDoAno = stdin.readLineSync()!;
  switch (mesDoAno) {
    case '2':
      print('O mês escolhido tem 28 dias');
    case '4' || '6' || '9' || '11':
      print('O mês escolhido tem 30 dias');
    case '1' || '3' || '5' || '7' || '8' || '10' || '12':
      print('O mês escolhido tem 31 dias');
    default:
      print('Opção inválida');
  }
}
