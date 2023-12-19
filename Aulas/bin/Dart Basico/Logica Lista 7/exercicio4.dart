import 'dart:io';

void main() {
  List<List<String>> agenda = [];
  String acao = '';
  while (acao != 'E') {
    print(
        'Qual ação deseja realizar:\n\nA)Cadastrar contato\nB)Exibir contatos\nC)Alterar contato\nD)Remover contato\nE)Sair');
    acao = stdin.readLineSync()!.toUpperCase();
    switch (acao) {
      case 'A':
        List<String> cadastroNovo = cadastrarContato();
        agenda.add(cadastroNovo);
        break;
      case 'B':
        exibirContatos(agenda);
      case 'C':
        alterarContato(agenda);
      case 'D':
        removerContato(agenda);
      case 'E':
        sair();
        break;
      default:
        print('Ação não localizada, favor escolher uma ação válida');
    }
  }
}

List<String> cadastrarContato() {
  List<String> cadastro = [];
  print('Para realizar o cadastro, favor informar abaixo:');
  print('Nome:');
  String nome = stdin.readLineSync()!;
  cadastro.add(nome);

  String email = '';
  while (email == '') {
    print('E-mail:');
    email = stdin.readLineSync()!;
    if (email != '') {
      cadastro.add(email);
      break;
    }
    print('E-mail inválido');
  }

  print('Telefone:');
  String telefone = stdin.readLineSync()!;
  cadastro.add(telefone);
  print('\nCadastro realizado\n');
  return cadastro;
}

exibirContatos(List<List<String>> agenda) {
  print('');
  for (List cadastro in agenda) {
    for (String info in cadastro) {
      print(info);
    }
    print('');
  }
}

alterarContato(List<List<String>> agenda) {
  bool erro = !false;
  while (erro) {
    print('Por gentileza, informe seu E-mail:');
    String emailDigitado = stdin.readLineSync()!;
    for (List<String> cadastro in agenda) {
      for (String infoCadastro in cadastro) {
        if (infoCadastro == emailDigitado) {
          print(
              'O cadastro localizado foi:\n\nNome:${cadastro[0]}\nE-mail:${cadastro[1]}\nTelefone:${cadastro[2]}');
          print(
              'Qual informação você deseja alterar?\n\nA)Nome\nB)E-mail\nC)Telefone');
          String alteracao = stdin.readLineSync()!.toUpperCase();
          String nome = '';
          String email = '';
          String telefone = '';

          switch (alteracao) {
            case 'A':
              print('Qual o NOVO nome?');
              nome = stdin.readLineSync()!;
              cadastro[0] = nome;
              erro = false;
            case 'B':
              print('Qual é o NOVO E-mail?');
              email = stdin.readLineSync()!;
              cadastro[1] = email;
              erro = false;
            case 'C':
              print('Qual é o NOVO número?');
              telefone = stdin.readLineSync()!;
              cadastro[2] = telefone;
              erro = false;
            default:
              print('Alteração não disponível, tente novamente');
          }
          print('Alteração realizada');
        }
      }
    }
  }
}

removerContato(List<List<String>> agenda) {
  bool erro = !false;
  List<String> cadastroRemove = [];
  while (erro) {
    print('Por gentileza, informe seu E-mail:');
    String emailDigitado = stdin.readLineSync()!;
    for (List<String> cadastro in agenda) {
      for (String infoCadastro in cadastro) {
        if (infoCadastro == emailDigitado) {
          cadastroRemove = cadastro;
          erro = false;
        }
      }
    }
  }
  agenda.remove(cadastroRemove);
  print('Cadastro removido!');
}

sair() {
  print('\nAplicação finalizada\n');
}
