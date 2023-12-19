import 'dart:io';

void main() {
  bool laco = true;
  int repeticoes = 0;
  int somaIdades = 0;
  double somaSalarios = 0;
  int maiorIdade = 0;
  int menorIdade = 999;
  double maiorSalario = 0;
  double menorSalario = 9999999;
  String pessoaMenorSalario = '';

  while (laco) {
    print('Informe a idade ou SAIR');
    String idadeStr = (stdin.readLineSync()!).toUpperCase();
    if (idadeStr == 'SAIR') {
      laco = false;
      continue;
    }
    int idade = int.parse(idadeStr);
    print('Qual seu sexo? M/F');
    String sexo = stdin.readLineSync()!;
    print('Qual é seu salário?');
    double salario = double.parse(stdin.readLineSync()!);

    somaIdades += idade;
    somaSalarios += salario;

    if (idade < menorIdade) {
      menorIdade = idade;
    }
    if (idade > maiorIdade) {
      maiorIdade = idade;
    }
    if (salario < menorSalario) {
      menorSalario = salario;
      pessoaMenorSalario = sexo;
    }
    if (salario > maiorSalario) {
      maiorSalario = salario;
    }
    repeticoes++;
  }

  double mediaIdades = somaIdades / repeticoes;
  double mediaSalarios = somaSalarios / repeticoes;
  print('\n\n');
  print('A média das idades é ${mediaIdades.toInt}');
  print('A média dos salários é ${mediaSalarios.toStringAsFixed(2)}');
  print('A maior idade é $maiorIdade');
  print('A menor idade é $menorIdade');
  print('O maior salário é ${maiorSalario.toStringAsFixed(2)}');
  print('O menor salário é ${menorSalario.toStringAsFixed(2)}');
  print('O sexo da pessoa com o menor salário é $pessoaMenorSalario');
  print('\n\n');
}
