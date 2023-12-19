import 'dart:io';

void main() {
  List nomes = [];
  for (int i = 1; i < 6; i++) {
    print('Digite um nome:');
    String nome = stdin.readLineSync()!;
    nomes.add(nome);
  }
  print('');
  for (String nome in nomes) {
    print(nome);
  }
}
