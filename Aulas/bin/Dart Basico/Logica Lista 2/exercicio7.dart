import 'dart:io';

void main() {
  print('Digite 3 números');
  print('Número 1: ');
  String numero1 = stdin.readLineSync()!;
  int n1 = int.parse(numero1);

  print('Número 2: ');
  String numero2 = stdin.readLineSync()!;
  int n2 = int.parse(numero2);

  print('Número 3: ');
  String numero3 = stdin.readLineSync()!;
  int n3 = int.parse(numero3);

  if (n1 < n2 && n1 < n3) {
    print('O menor número é $n1');
  } else if (n2 < n3) {
    print('O menor número é $n2');
  } else {
    print('O menor número é $n3');
  }
}
