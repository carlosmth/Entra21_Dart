class Marca {
  String nome;

  Marca({required this.nome});

  @override
  String toString() {
    return 'Marca:$nome';
  }
}

class Modelo {
  Marca marca;
  String nome;

  Modelo({required this.marca, required this.nome});

  @override
  String toString() {
    return 'Marca:$marca\nModelo:$nome';
  }
}

class Categoria {
  String nome;

  Categoria({required this.nome});

  @override
  String toString() {
    return 'Categoria:$nome';
  }
}

class Produto {
  String nome;
  Modelo modelo;
  double valor;

  List<Categoria> categorias;

  Produto(
      {required this.nome,
      required this.modelo,
      required this.valor,
      required this.categorias});

  @override
  String toString() {
    return 'Produto:$nome\nModelo:$modelo\nValor:$valor\n';
  }
}

class Estoque {
  List<Produto> produtos;

  Estoque({required this.produtos});

  @override
  String toString() {
    return 'Produtos:$produtos';
  }
}
