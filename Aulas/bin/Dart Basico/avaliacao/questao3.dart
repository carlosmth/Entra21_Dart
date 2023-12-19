import 'dart:io';

void main() {
  String diaDaSemada = stdin.readLineSync()!;
  print(
      'Digite o número correspondente a um dia da semana\n\n1 - Domingo\n2 - Segunda\n3 - Terça\n4 - Quarta\n5 - Quinta\n6 - Sexta\n7 - Sábado\n\n');

  switch (diaDaSemada) {
    case '1':
      print('Domingo');
    case '2':
      print('Segunda');
    case '3':
      print('Terça');
    case '4':
      print('Quarta');
    case '5':
      print('Quinta');
    case '6':
      print('Sexta');
    case '7':
      print('Sábado');
    default:
      print('Opção inválida');
  }
}
