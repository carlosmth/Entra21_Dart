import 'dart:io';

void main() {
  List<int> numeros = [];
  int? numero = 0;
  int repeticoes = 0;

  while (numero != null) {
    print('Por gentileza, digite um número inteiro');
    numero = int.tryParse(stdin.readLineSync()!);
    if (numero != null) {
      numeros.add(numero);
      repeticoes++;
    }
  }

  print('Foram adicionados a lista $repeticoes números\nSão eles:');
  for (int numero in numeros) {
    print(numero);
  }
}
