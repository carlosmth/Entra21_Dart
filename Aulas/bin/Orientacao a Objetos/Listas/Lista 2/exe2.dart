import 'exe1.dart';

void main() {
  Veiculo veiculo1 = Veiculo();

  veiculo1.definirMarca = 'Volkswagen';
  veiculo1.definirModelo = 'Fusca';
  veiculo1.definirAnoModelo = 1980;
  veiculo1.definirAnoFabricacao = 1979;

  Veiculo veiculo2 = Veiculo();

  veiculo2.definirMarca = 'Toyota';
  veiculo2.definirModelo = 'Bandeirante';
  veiculo2.definirAnoModelo = 1968;
  veiculo2.definirAnoFabricacao = 1967;

  Veiculo veiculo3 = Veiculo();

  veiculo3.definirMarca = 'Fiat';
  veiculo3.definirModelo = 'Uno';
  veiculo3.definirAnoModelo = 2000;
  veiculo3.definirAnoFabricacao = 1999;

  print(veiculo1);
  print(veiculo2);
  print(veiculo3);
}
