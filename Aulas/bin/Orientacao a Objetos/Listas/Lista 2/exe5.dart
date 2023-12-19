import 'exe1.dart';

void main() {
  Veiculo veiculoGasolina = Veiculo.gasolina(
    marca: 'Volkswagen',
    modelo: 'Gol',
    anoModelo: 2020,
    anoFabricacao: 2019,
  );
  Veiculo veiculoDiesel = Veiculo.diesel(
    marca: 'Volkswagen',
    modelo: 'Gol',
    anoModelo: 2020,
    anoFabricacao: 2019,
  );
  Veiculo veiculoFlex = Veiculo.flex(
    marca: 'Volkswagen',
    modelo: 'Gol',
    anoModelo: 2020,
    anoFabricacao: 2019,
  );

  print(veiculoGasolina);
  print(veiculoDiesel);
  print(veiculoFlex);
}
