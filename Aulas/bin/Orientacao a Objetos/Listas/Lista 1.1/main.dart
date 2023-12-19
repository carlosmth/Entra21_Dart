import 'estoque.dart';
import 'marca.dart';
import 'modelo.dart';
import 'veiculoLista1.dart';

void main() {
  Estoque estoque = Estoque();
  Marca marca1 = Marca();
  Modelo modelo1 = Modelo();
  Veiculo veiculo1 = Veiculo();

  marca1.nome = 'Volkswagem';
  modelo1.nome = 'Fusca';

  veiculo1.marca = marca1;
  veiculo1.modelo = modelo1;
  veiculo1.anoFab = '1979';
  veiculo1.anoMod = '1980';
  veiculo1.cor = 'Azul';

  estoque.adicionarVeiculo(veiculo1);

  Marca marca2 = Marca();
  Modelo modelo2 = Modelo();
  Veiculo veiculo2 = Veiculo();

  marca2.nome = 'Fiat';
  modelo2.nome = 'Uno';

  veiculo2.marca = marca2;
  veiculo2.modelo = modelo2;
  veiculo2.anoFab = '2000';
  veiculo2.anoMod = '2000';
  veiculo2.cor = 'Cinza';

  estoque.adicionarVeiculo(veiculo2);

  Marca marca3 = Marca();
  Modelo modelo3 = Modelo();
  Veiculo veiculo3 = Veiculo();

  marca3.nome = 'Ford';
  modelo3.nome = 'Ka';

  veiculo3.marca = marca3;
  veiculo3.modelo = modelo3;
  veiculo3.anoFab = '2005';
  veiculo3.anoMod = '2006';
  veiculo3.cor = 'Vermelho';

  estoque.adicionarVeiculo(veiculo3);

  Marca marca4 = Marca();
  Modelo modelo4 = Modelo();
  Veiculo veiculo4 = Veiculo();

  marca4.nome = 'Chevrolet';
  modelo4.nome = 'Kadet';

  veiculo4.marca = marca4;
  veiculo4.modelo = modelo4;
  veiculo4.anoFab = '1995';
  veiculo4.anoMod = '1996';
  veiculo4.cor = 'Preto';

  estoque.adicionarVeiculo(veiculo4);

  estoque.listarVeiculo();
}
