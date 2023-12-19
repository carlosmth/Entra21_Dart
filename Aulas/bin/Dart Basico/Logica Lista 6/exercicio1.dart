void main() {
  List listaDeCidades = [
    'Blumenau',
    'Gaspar',
    'Indaial',
    'Curitiba',
    'São Paulo'
  ];
  exibeLista(listaDeCidades);
}

exibeLista(listaDeCidades) {
  for (String cidade in listaDeCidades) {
    print(cidade);
  }
}
