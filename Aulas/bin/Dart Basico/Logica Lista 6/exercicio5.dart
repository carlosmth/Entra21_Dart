import 'dart:io';

void main() {
  List<int> listaDeNumeros = [];

  pedeNumeros(listaDeNumeros);
  exibeQtdDeDez(listaDeNumeros);
}

pedeNumeros(listaDeNumeros) {
  int numero = 5;
  while (listaDeNumeros.length < numero) {
    print('Informe um número:');
    int valor = int.parse(stdin.readLineSync()!);
    listaDeNumeros.add(valor);
  }
}

exibeQtdDeDez(listaDeNumeros) {
  int qtdDeDez = 0;
  for (int numero in listaDeNumeros) {
    if (numero == 10) {
      qtdDeDez++;
    }
  }
  print('Foram digitados $qtdDeDez números 10');
}
