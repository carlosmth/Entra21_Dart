import 'dart:io';

void main() {
  List<int> listaDeNumeros = [];

  pedeNumeros(listaDeNumeros);
  exibeSoma(listaDeNumeros);
  exibeMenor(listaDeNumeros);
  exibeMaior(listaDeNumeros);
  exibeMedia(listaDeNumeros);
}

pedeNumeros(listaDeNumeros) {
  int numero = 8;
  while (listaDeNumeros.length < numero) {
    print('Informe um número:');
    int valor = int.parse(stdin.readLineSync()!);
    listaDeNumeros.add(valor);
  }
}

exibeSoma(listaDeNumeros) {
  int soma = 0;
  for (int numero in listaDeNumeros) {
    soma += numero;
  }
  print('A soma dos valores é $soma');
}

exibeMenor(listaDeNumeros) {
  int menor = 10000000;
  for (int numero in listaDeNumeros) {
    if (numero < menor) {
      menor = numero;
    }
  }
  print('O menor número é $menor');
}

exibeMaior(listaDeNumeros) {
  int maior = 0;
  for (int numero in listaDeNumeros) {
    if (numero > maior) {
      maior = numero;
    }
  }
  print('O maior número é $maior');
}

exibeMedia(listaDeNumeros) {
  int soma = 0;
  int repeticao = 0;
  for (int numero in listaDeNumeros) {
    soma += numero;
    repeticao++;
  }
  print('A média dos valores é ${(soma ~/ repeticao)}');
}
