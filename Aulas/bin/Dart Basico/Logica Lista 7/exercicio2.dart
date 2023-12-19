import 'dart:io';

void main() {
  List<List<int>> matriz = [];
  int limite = 4;

  while (matriz.length < limite) {
    List<int> listaDeNumeros = [];
    while (listaDeNumeros.length < limite) {
      print('Por gentileza digite um número');
      int numero = int.parse(stdin.readLineSync()!);
      listaDeNumeros.add(numero);
      print('Número salvo');
    }
    matriz.add(listaDeNumeros);
  }

  int soma = 0;

  for (List<int> lista in matriz) {
    for (int numero in lista) {
      soma += numero;
    }
  }
  print(soma);
}
