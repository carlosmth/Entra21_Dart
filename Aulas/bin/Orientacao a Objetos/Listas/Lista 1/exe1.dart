import 'pessoa.dart';

void main() {
  Pessoa pessoa1 = Pessoa();
  Pessoa pessoa2 = Pessoa();
  Pessoa pessoa3 = Pessoa();

  pessoa1.nomeCompleto = 'Maria Silva';
  pessoa1.idade = 19;
  pessoa1.estadoCivil = 'Casada';

  pessoa2.nomeCompleto = 'João Pereira';
  pessoa2.idade = 50;
  pessoa2.estadoCivil = 'Solteiro';

  pessoa3.nomeCompleto = 'Manuela Gomes';
  pessoa3.idade = 34;

  pessoa1.mostrar();
  print('');
  pessoa2.mostrar();
  print('');
  pessoa3.mostrar();
  print('');
}
