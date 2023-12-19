import 'veiculoLista1.dart';

class Estoque {
  List<Veiculo> listaDeVeiculos = [];

  adicionarVeiculo(Veiculo veiculo) {
    listaDeVeiculos.add(veiculo);
  }

  removerVeiculo(Veiculo veiculo) {
    listaDeVeiculos.remove(veiculo);
  }

  listarVeiculo() {
    for (final Veiculo veiculo in listaDeVeiculos) {
      print(
          'Marca:${veiculo.marca!.nome}\nModelo:${veiculo.modelo!.nome}\nAno de Fab.:${veiculo.anoFab}\nAno de Mod:${veiculo.anoMod}\nCor:${veiculo.cor}\n');
    }
  }
}
