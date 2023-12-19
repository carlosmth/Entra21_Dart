import 'dart:io';

void main() {
  List<int> listaDeNumeros = [];

  pedeNumeros(listaDeNumeros);
  exibeLista(listaDeNumeros);
  exibeSoma(listaDeNumeros);
}

pedeNumeros(listaDeNumeros) {
  int numero = 5;
  while (listaDeNumeros.length < numero) {
    print('Informe um número:');
    int valor = int.parse(stdin.readLineSync()!);
    listaDeNumeros.add(valor);
  }
}

exibeLista(listaDeNumeros) {
  for (int numero in listaDeNumeros) {
    print(numero);
  }
}

exibeSoma(listaDeNumeros) {
  int soma = 0;
  for (int numero in listaDeNumeros) {
    soma += numero;
  }
  print('A soma dos valores é $soma');
}
