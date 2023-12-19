void main() {
  List values = [
    10,
    0.01,
    '5',
    null,
    true,
    'sete',
    8,
    '10,5',
    -1,
    'false',
    '10.0'
  ];
  List<num> numericos = [];
  List naoNumerico = [];

  int contReais = organizaPorTipo(values, numericos, naoNumerico);
  num somatorio = soma(numericos);

  print('\nO valor da soma dos números é: $somatorio');
  print('\nA quantidade de números reais é: $contReais');
  exibeNaoNumerico(naoNumerico);
}

int organizaPorTipo(List values, List<num> numericos, List naoNumerico) {
  int contReais = 0;
  for (dynamic item in values) {
    if (item is int) {
      numericos.add(item);
      contReais++;
    }
    if (item is double) {
      numericos.add(item);
      contReais++;
    }
    if (item is String) {
      num? itemInt = num.tryParse(item);
      // double? itemDouble = double.tryParse(item);
      if (itemInt != null) {
        numericos.add(itemInt);
        contReais++;
        // } else if (itemDouble != null) {
        //   numericos.add(itemDouble);
        //   contReais++;
      } else if (itemInt == null) {
        naoNumerico.add(item);
      }
    }
    if (item == null || item == true) {
      naoNumerico.add(item);
    }
  }
  return contReais;
}

num soma(List<num> numericos) {
  num soma = 0;
  for (num numero in numericos) {
    soma += numero;
  }
  return soma;
}

exibeNaoNumerico(List naoNumerico) {
  print('\nOs itens não númericos são:');
  for (dynamic item in naoNumerico) {
    print(item);
  }
}
