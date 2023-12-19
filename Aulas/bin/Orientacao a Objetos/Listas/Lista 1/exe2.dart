import 'dart:io';
import 'package:intl/intl.dart';
import 'pessoa.dart';

void main() {
  List<Pessoa> listaDePessoas = [];
  while (listaDePessoas.length < 3) {
    Pessoa pessoa = Pessoa();
    print('');
    print('Digite o nome:');
    String nome = stdin.readLineSync()!;
    print('Digite a idade:');
    int? idade = int.tryParse(stdin.readLineSync()!);
    print('Digite o estado civil:');
    String estadoCivil = stdin.readLineSync()!;
    print('Digite a data de nascimento:');
    String dataNasc = stdin.readLineSync()!;

    DateFormat df = DateFormat('dd/MM/yyyy');
    DateTime? dataNascimento = df.parse(dataNasc);

    print('');
    pessoa.nomeCompleto = nome;
    pessoa.idade = idade;
    pessoa.estadoCivil = estadoCivil;
    pessoa.dataNascimento = dataNascimento;
    listaDePessoas.add(pessoa);
    print('Cadastro criado com sucesso');
  }

  print('Os cadastros na lista são:');
  for (Pessoa pessoa in listaDePessoas) {
    pessoa.mostrar();
  }
}
