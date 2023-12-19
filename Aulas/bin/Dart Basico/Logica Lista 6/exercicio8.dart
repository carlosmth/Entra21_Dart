import 'dart:io';

void main() {
  const String cadastrarPessoaCode = '1';
  const String removerPessoaCode = '2';
  const String exibirPessoaCode = '3';
  const String finalizarPessoaCode = '4';
  String acao = '';

  List<Pessoa> listaDePresenca = [];

  while (acao != finalizarPessoaCode) {
    print(
        '\n\nQual ação você deseja realizar?\n\n1 - Cadastrar\n2 - Remover\n3 - Listar\n4 - Finalizar\n');
    acao = stdin.readLineSync()!;

    switch (acao) {
      case cadastrarPessoaCode:
        Pessoa novoCadastro = solicitaDados();

        bool autorizado = autorizaCadastrar(
            listaDePresenca: listaDePresenca, novoCadastro: novoCadastro);
        if (autorizado) {
          cadastrar(
              listaDePresenca: listaDePresenca, novoCadastro: novoCadastro);
        }
      case removerPessoaCode:
        String identificador = pedeIdentificador();

        bool autorizado = autorizaRemover(
            listaDePresenca: listaDePresenca, identificador: identificador);
        if (autorizado) {
          remover(
              listaDePresenca: listaDePresenca, identificador: identificador);
        }
      case exibirPessoaCode:
        listar(listaDePresenca: listaDePresenca);
      case finalizarPessoaCode:
        finalizar();
    }
  }
}

class Pessoa {
  String nome;
  String endereco;
  String cpf;

  Pessoa({
    this.nome = '',
    this.endereco = '',
    required this.cpf,
  });
}

Pessoa solicitaDados() {
  String nomeEntrada = '';
  String cpfEntrada = '';
  bool primeiraTentativa = true;
  print(
      '\nPara realizar o cadastro, vou precisar de algumas informações\nInformamos que os campos "Nome" e "CPF" são obrigatórios\n');
  while (nomeEntrada == '') {
    if (nomeEntrada == '' && primeiraTentativa == false) {
      print('Nome inválido\nCampo nome é Obrigatório\n');
    }
    print('Nome:');
    nomeEntrada = stdin.readLineSync()!;
    primeiraTentativa = false;
  }
  print('Nome Válido');
  primeiraTentativa = true;
  while (cpfEntrada == '') {
    if (cpfEntrada == '' && primeiraTentativa == false) {
      print('CPF inválido\nCampo CPF é Obrigatório\n');
    }
    print('CPF:');
    cpfEntrada = stdin.readLineSync()!;
    primeiraTentativa = false;
  }
  print('CPF Válido');

  print('Endereço:');
  String enderecoEntrada = stdin.readLineSync()!;

  Pessoa novoCadastro =
      Pessoa(nome: nomeEntrada, cpf: cpfEntrada, endereco: enderecoEntrada);
  return novoCadastro;
}

String pedeIdentificador() {
  print('Para remover um cadastro, por gentileza informe o CPF:');
  String cpfInformado = stdin.readLineSync()!;
  return cpfInformado;
}

bool autorizaCadastrar(
    {required List<Pessoa> listaDePresenca, required Pessoa novoCadastro}) {
  for (Pessoa cadastroExistente in listaDePresenca) {
    if (cadastroExistente.cpf == novoCadastro.cpf) {
      print('\nCPF já cadastrado\nPor gentileza verificar CPF digitado\n');
      return false;
    }
  }
  return true;
}

bool autorizaRemover(
    {required List<Pessoa> listaDePresenca, required String identificador}) {
  for (Pessoa cadastroExistente in listaDePresenca) {
    if (cadastroExistente.cpf == identificador) {
      return true;
    }
  }
  print('\nCadastro não localizado\nPor gentileza verificar CPF informado');
  return false;
}

cadastrar(
    {required List<Pessoa> listaDePresenca, required Pessoa novoCadastro}) {
  listaDePresenca.add(novoCadastro);
  print('\n\nCadastro realizado');
}

remover(
    {required List<Pessoa> listaDePresenca, required String identificador}) {
  for (Pessoa cadastroExistente in listaDePresenca) {
    if (cadastroExistente.cpf == identificador) {
      listaDePresenca.remove(cadastroExistente);
      print('\n\nCadastro removido');
      break;
    }
  }
}

listar({required List<Pessoa> listaDePresenca}) {
  for (Pessoa cadastro in listaDePresenca) {
    print('''\n\nNome: ${cadastro.nome};\nCPF: ${cadastro.cpf};''');
  }
}

finalizar() {
  print('Aplicação finalizada');
}
