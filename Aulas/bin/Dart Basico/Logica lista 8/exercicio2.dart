import 'dart:io';

void main() {
  int? num1 = solicitaNumero();
  int? num2 = solicitaNumero();
  int? resultado = multiplicar(num1, num2);
  if (resultado != null) {
    print('Resultado: $resultado');
  } else {
    print('As entradas não são válidas');
  }
}

int? solicitaNumero() {
  print('Digite um número');
  int? numero = int.tryParse(stdin.readLineSync()!);
  return numero;
}

int? multiplicar(int? num1, int? num2) {
  if (num1 != null && num2 != null) {
    return num1 * num2;
  }
  return null;
}
