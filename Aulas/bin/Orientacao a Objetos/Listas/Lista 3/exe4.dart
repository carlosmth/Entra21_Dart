import 'exe1-3.dart';

void main() {
  Marca marca1 = Marca(nome: 'Volskwagem');
  Modelo modelo1 = Modelo(marca: marca1, nome: 'Tsi');
  List<Categoria> categoria1 = [Categoria(nome: 'Veículo')];

  Produto produto1 = Produto(
    nome: 'Golf',
    modelo: modelo1,
    valor: 80000.00,
    categorias: categoria1,
  );

  Marca marca2 = Marca(nome: 'Honda');
  Modelo modelo2 = Modelo(marca: marca2, nome: 'Titan');
  List<Categoria> categoria2 = [Categoria(nome: 'Motocicleta')];

  Produto produto2 = Produto(
    nome: 'CG 160',
    modelo: modelo2,
    valor: 15000.00,
    categorias: categoria2,
  );

  List<Produto> estoque = [produto1, produto2];
  Estoque(produtos: estoque);

  print('$marca1, //colocar demais objetos');
}
