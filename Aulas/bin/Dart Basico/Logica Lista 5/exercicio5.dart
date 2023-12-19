import 'dart:io';

void main() {
  print('Informe o raio do círculo:');
  double raio = double.parse(stdin.readLineSync()!);

  double diametro = calculaDiametro(raio);

  print('O diâmetro é ${diametro.toStringAsFixed(2)}');
}

calculaDiametro(double raio) {
  double resultado = 3.14 * (2 * raio);
  return resultado;
}
