import 'dart:io';

void main() {
  print('Digite 3 números');
  print('Número 1: ');
  String numero1 = stdin.readLineSync()!;
  double n1 = double.parse(numero1);

  print('Número 2: ');
  String numero2 = stdin.readLineSync()!;
  double n2 = double.parse(numero2);

  print('Número 3: ');
  String numero3 = stdin.readLineSync()!;
  double n3 = double.parse(numero3);

  if (n1 < n2 && n1 < n3) {
    if (n2 < n3) {
      print('A sequência em ordem crescente é $n1, $n2 e $n3');
    } else {
      print('A sequência em ordem crescente é $n1, $n3 e $n2');
    }
  }
  if (n2 < n1 && n2 < n3) {
    if (n1 < n3) {
      print('A sequência em ordem crescente é $n2, $n1 e $n3');
    } else {
      print('A sequência em ordem crescente é $n2, $n3 e $n1');
    }
  }
  if (n3 < n2 && n3 < n1) {
    if (n1 < n2) {
      print('A sequência em ordem crescente é $n3, $n1 e $n2');
    } else {
      print('A sequência em ordem crescente é $n3, $n2 e $n1');
    }
  }
}
