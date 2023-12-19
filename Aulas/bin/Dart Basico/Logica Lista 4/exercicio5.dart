import 'dart:io';

void main() {
  int tentativas = 3;

  do {
    print('Qual a senha de acesso?');
    int entrada = int.parse(stdin.readLineSync()!);

    if (entrada == 1234) {
      print('Acesso concedido');
      break;
    } else {
      tentativas -= 1;
      print('Senha incorreta, voce tem $tentativas tentativas');
    }
  } while (tentativas > 0);

  if (tentativas == 0) {
    print('Conta Bloqueada');
  }
}
