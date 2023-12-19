import 'dart:io';

void main() {
  String nome = '';
  String email = '';

  while (nome == '') {
    print('Nome:');
    nome = stdin.readLineSync()!;
    if (nome == '') {
      print('Nome é um campo obrigatório, por gentileza digite um nome válido');
    }
  }

  while (email == '') {
    print('E-mail:');
    String emailDigitado = stdin.readLineSync()!;
    if (emailDigitado == '') {
      print(
          'E-mail é um campo obrigatório, por gentileza digite um E-mail válido');
    } else {
      email = emailDigitado;
    }
  }

  print('Endereco:');
  String endereco = stdin.readLineSync()!;

  print('Idade:');
  String idade = stdin.readLineSync()!;

  print('Número de telefone:');
  String telefone = stdin.readLineSync()!;

  cadastros(
    nome: nome,
    email: email,
    endereco: endereco,
    idade: idade,
    telefone: telefone,
  );
}

void cadastros(
    {required String nome,
    required String email,
    String? endereco,
    String? idade,
    String? telefone}) {
  print('Seu cadastro:');
  print('Nome:$nome');
  print('E-mail:$email');
  if (endereco != '') {
    print('Endereço:$endereco');
  }
  if (idade != '') {
    print('Idade:$idade');
  }
  if (telefone != '') {
    print('Telefone:$telefone');
  }
}
