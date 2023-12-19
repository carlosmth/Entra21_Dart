import 'exe1.dart';

void main() {
  List<Veiculo> listaDeVeiculos = [];
  String acao = '';
  while (acao != '4') {
    acao = pedeAcao();
    switch (acao) {
      case '1':
        cadastrarVeiculo(listaDeVeiculos);
      case '2':
        listarVeiculos(listaDeVeiculos);
      case '3':
        removerVeiculo(listaDeVeiculos);
      case '4':
        print('Fim da aplicação');
        break;
      default:
        print('Ação inválida, tente novamente\n');
    }
  }
}
