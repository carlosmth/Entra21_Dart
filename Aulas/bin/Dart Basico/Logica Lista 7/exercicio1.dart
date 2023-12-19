void main() {
  List<List> produtos = [
    ['Gol', 'Volkswagem', 'R\$15.000,00'],
    ['Celta', 'Chevrolett', 'R\$14.000,00'],
    ['Model X', 'Tesla', 'R\$50.000,00']
  ];

  for (List produto in produtos) {
    for (String conteudo in produto) {
      print(conteudo);
    }
  }
}
