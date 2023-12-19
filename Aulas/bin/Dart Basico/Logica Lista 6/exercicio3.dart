import 'dart:io';

void main() {
  List<String> listaDeNomes = [];

  pedeNomes(listaDeNomes);
  exibeLista(listaDeNomes);
  exibeQtdNomes(listaDeNomes);
}

pedeNomes(listaDeNomes) {
  String nome = '';
  while (nome != 'SAIR') {
    print('Informe um nome:');
    nome = stdin.readLineSync()!.toUpperCase();
    if (nome != 'SAIR') {
      listaDeNomes.add(nome);
    }
  }
}

exibeLista(listaDeNomes) {
  for (String nome in listaDeNomes) {
    print(nome);
  }
}

exibeQtdNomes(listaDeNomes) {
  int qtdDeNomes = listaDeNomes.length;
  print('A quantidade de nomes é $qtdDeNomes');
}
