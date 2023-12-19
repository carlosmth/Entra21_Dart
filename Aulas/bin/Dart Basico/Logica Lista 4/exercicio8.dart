import 'dart:io';

void main() {
  bool ocorrendo = true;
  int humberto = 0;
  int maria = 0;
  int mario = 0;
  int antonio = 0;
  String vencedor = '';

  while (ocorrendo) {
    print(
        '''Eleições Entra21\n\nCandidatos:\n\n1 Humberto\n2 Maria\n3 Mário\n4 Antônio\n\nDigite o número do candidato desejado:''');
    int voto = int.parse(stdin.readLineSync()!);

    switch (voto) {
      case 1:
        humberto++;
        break;
      case 2:
        maria++;
        break;
      case 3:
        mario++;
        break;
      case 4:
        antonio++;
        break;
      case 5:
        ocorrendo = false;
      default:
        print(
            'Candidato não localizado!\nPor gentileza digite um número valido');
        break;
    }
  }

  if (humberto > maria && humberto > mario && humberto > antonio) {
    vencedor = 'Humberto';
  } else if (maria > mario && maria > antonio && maria > humberto) {
    vencedor = 'Maria';
  } else if (mario > antonio && mario > maria && mario > humberto) {
    vencedor = 'Mario';
  } else if (antonio > mario && antonio > maria && antonio > humberto) {
    vencedor = 'Antonio';
  } else {
    vencedor = 'Empate';
  }
  print(
      '''\n***** Resultado das Eleições *****\n\nHumberto  => $humberto\nMaria     => $maria\nMário     => $mario\nAntônio   => $antonio\n''');
  if (vencedor == 'Empate') {
    print('Será necessário nova eleição');
  } else {
    print('O vencedor foi $vencedor');
  }
  print('');
}
