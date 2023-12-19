import 'dart:io';

void main() {
  List<int> numeros = [];

  print('Digite 3 números');
  print('Número 1: ');
  String numero1 = stdin.readLineSync()!;
  int n1 = int.parse(numero1);
  numeros.add(n1);

  print('Número 2: ');
  String numero2 = stdin.readLineSync()!;
  int n2 = int.parse(numero2);
  numeros.add(n2);

  print('Número 3: ');
  String numero3 = stdin.readLineSync()!;
  int n3 = int.parse(numero3);
  numeros.add(n3);
  numeros.sort();

  print(numeros);
}
