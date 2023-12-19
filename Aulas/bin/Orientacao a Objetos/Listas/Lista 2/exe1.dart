import 'dart:io';

class Veiculo {
  String? marca;
  String? modelo;
  int? anoModelo;
  int? anoFabricacao;
  String? tipoDeCombustivel;

  // Veiculo([this._marca, this.__modelo, this._anoModelo, this._anoFabricacao]);
  Veiculo({
    this.marca,
    this.modelo,
    this.anoModelo,
    this.anoFabricacao,
    this.tipoDeCombustivel,
  });

  Veiculo.gasolina({
    this.marca,
    this.modelo,
    this.anoModelo,
    this.anoFabricacao,
    this.tipoDeCombustivel = 'Gasolina',
  });

  Veiculo.flex({
    this.marca,
    this.modelo,
    this.anoModelo,
    this.anoFabricacao,
    this.tipoDeCombustivel = 'Flex',
  });

  Veiculo.diesel(
      {this.marca,
      this.modelo,
      this.anoModelo,
      this.anoFabricacao,
      this.tipoDeCombustivel = 'Diesel'});

  set definirMarca(String? marca) {
    marca = marca;
  }

  String? get buscarMarca {
    return marca;
  }

  set definirModelo(String? modelo) {
    modelo = modelo;
  }

  String? get buscarModelo {
    return modelo;
  }

  set definirAnoModelo(int? anoModelo) {
    anoModelo = anoModelo;
  }

  int? get buscarAnoModelo {
    return anoModelo;
  }

  set definirAnoFabricacao(int? anoFabricacao) {
    anoFabricacao = anoFabricacao;
  }

  int? get buscarAnoFabricacao {
    return anoFabricacao;
  }

  set definirTipoCombustivel(String? tipoCombustivel) {
    tipoDeCombustivel = tipoCombustivel;
  }

  String? get buscarTipoCombustivel {
    return tipoDeCombustivel;
  }

  @override
  String toString() {
    return '\nMarca:$marca;\nModelo:$modelo;\nAno Modelo:$anoModelo;\nAno Fabricação:$anoFabricacao;\nTipo de Combustível:$tipoDeCombustivel;\n';
  }
}

cadastrarVeiculo(List<Veiculo> listaDeVeiculos) {
  Veiculo veiculo = Veiculo();
  print('Qual a Marca do Veículo?');
  veiculo.marca = stdin.readLineSync()!;
  print('Qual o Modelo do Veículo?');
  veiculo.modelo = stdin.readLineSync()!;
  print('Qual o Ano do Modelo do Veículo?');
  veiculo.anoModelo = int.tryParse(stdin.readLineSync()!);
  print('Qual o ano de Fabricação do Veículo?');
  veiculo.anoFabricacao = int.tryParse(stdin.readLineSync()!);
  print('Qual o combustível utilizado?');
  veiculo.tipoDeCombustivel = stdin.readLineSync()!;
  listaDeVeiculos.add(veiculo);
  print('Veículo cadastrado');
}

listarVeiculos(List<Veiculo> listaDeVeiculos) {
  if (listaDeVeiculos.isNotEmpty) {
    for (Veiculo veiculo in listaDeVeiculos) {
      print(
          '\nMarca:${veiculo.marca};\nModelo:${veiculo.modelo};\nAno Modelo:${veiculo.anoModelo};\nAno Fabricação:${veiculo.anoFabricacao};\nTipo de Combustível:${veiculo.tipoDeCombustivel};\n');
    }
  }
  listaVaziaTexto();
}

removerVeiculo(List<Veiculo> listaDeVeiculos) {
  if (listaDeVeiculos.isNotEmpty) {
    print('Qual o modelo do veículo que deseja remover?');
    String modelo = stdin.readLineSync()!;
    for (Veiculo veiculo in listaDeVeiculos) {
      if (modelo == veiculo.modelo) {
        listaDeVeiculos.remove(veiculo);
        print('Veículo removido!');
        break;
      }
      print('Não foi localizado um veículo com esse modelo na lista');
    }
  }
  listaVaziaTexto();
}

String pedeAcao() {
  print(
      'Qual ação deseja realizar?\n\n1- Cadastrar Veículo\n2- Listar Veículos\n3- Remover Veículo\n4- Sair');
  String acao = stdin.readLineSync()!;
  return acao;
}

listaVaziaTexto() {
  print('Ainda não há veículos na lista\n');
}
