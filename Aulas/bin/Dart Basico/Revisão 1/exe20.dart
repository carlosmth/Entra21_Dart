import 'dart:io';

void main(List<String> args) {
  print('Quantas vezes a palavra "Hello" deverá ser exibida?');
  int qtdRepeticao = int.parse(stdin.readLineSync()!);
  int exibiu = 1;
  while (qtdRepeticao >= exibiu) {
    print('Hello');
    exibiu++;
  }
}
