import 'package:intl/intl.dart';

class Pessoa {
  String? nomeCompleto;
  int? idade;
  String? estadoCivil;
  DateTime? dataNascimento;

  void mostrar() {
    DateFormat df = DateFormat('dd/MM/yyyy');
    String dtStr = df.format(dataNascimento!);

    print(
        '\nNome:$nomeCompleto\nIdade:$idade\nEstado Civil:$estadoCivil\nData de Nascimento:$dtStr');
  }
}
