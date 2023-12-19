import 'dart:io';

void main() {
  List<int> listaDeNumeros = [];

  pedeNumeros(listaDeNumeros);
  exibeNumeros(listaDeNumeros);
}

pedeNumeros(listaDeNumeros) {
  int numero = 5;
  while (listaDeNumeros.length < numero) {
    print('Informe um número:');
    int valor = int.parse(stdin.readLineSync()!);
    listaDeNumeros.add(valor);
  }
}

exibeNumeros(listaDeNumeros) {
  for (int numero = 1; listaDeNumeros.length >= numero; numero++) {
    print(listaDeNumeros[listaDeNumeros.length - numero]);
  }
}
