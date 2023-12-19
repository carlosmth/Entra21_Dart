import 'dart:io';

void main() {
  print(
      'Descubra o tipo do triângulo\nInforme o comprimento de cada lado em centímetros abaixo:');
  print('Lado 1: ');
  String lado1 = stdin.readLineSync()!;
  int n1 = int.parse(lado1);

  print('Lado 2: ');
  String lado2 = stdin.readLineSync()!;
  int n2 = int.parse(lado2);

  print('Lado 3: ');
  String lado3 = stdin.readLineSync()!;
  int n3 = int.parse(lado3);

  if (n1 == n2 && n2 == n3) {
    print('O triângulo é Equilátero');
  } else if (n1 != n2 && n1 != n3 && n2 != n3) {
    print('O triângulo é Escaleno');
  } else {
    print('O triângulo é Isósceles');
  }
}
