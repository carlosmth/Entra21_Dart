import 'dart:io';

void main() {
  print('Calcule a área do retangulo informando o tamanho de dois lados');
  print('Informe o tamanho lado 1 em centímetros: ');
  String lado1 = stdin.readLineSync()!;
  int b = int.parse(lado1);

  print('Informe o tamanho lado 2 em centímetros: ');
  String lado2 = stdin.readLineSync()!;
  int h = int.parse(lado2);

  int area = b * h;

  print('A área do retangulo é $area cm²');
}
