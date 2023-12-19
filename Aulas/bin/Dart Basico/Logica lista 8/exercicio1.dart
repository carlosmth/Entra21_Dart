import 'dart:io';

void main() {
  mensagemInicial();
  bool valor = false;
  while (valor == false) {
    String? numeroStr = solicitaNumero();
    valor = valorIsNotNull(numeroStr);
    if (valor == false) {
      print('A entrada não é um número valido, tente novamente');
    } else {
      int numeroInt = int.parse(numeroStr);
      exibeTabuada(numeroInt);
    }
  }
}

mensagemInicial() {
  print('Calculadora de Tabuadas');
}

String solicitaNumero() {
  print('Digite um número');
  String numeroStr = stdin.readLineSync()!;
  return numeroStr;
}

bool valorIsNotNull(String numeroStr) {
  int? numeroInt = int.tryParse(numeroStr);
  if (numeroInt != null) {
    return true;
  }
  return false;
}

exibeTabuada(numeroInt) {
  print('A tabuada do $numeroInt é:');
  for (int i = 1; i < 11; i++) {
    print('$numeroInt x $i = ${numeroInt * i}');
  }
}
