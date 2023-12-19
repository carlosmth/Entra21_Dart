import 'dart:io';

void main() {
  List<String> pessoa = [];
  String nome = '';
  while (nome != 'SAIR') {
    print('Para realizar o cadastro, favor informar abaixo:');
    print('Nome:');
    nome = stdin.readLineSync()!.toUpperCase();
    if (nome != 'SAIR') {
      pessoa.add(nome);
      print('Idade:');
      String idade = stdin.readLineSync()!;
      pessoa.add(idade);
      print('Cidade:');
      String cidade = stdin.readLineSync()!;
      pessoa.add(cidade);
    }
  }
  for (String info in pessoa) {
    print(info);
  }
}
