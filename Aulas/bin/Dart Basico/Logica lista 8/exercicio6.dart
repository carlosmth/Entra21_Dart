void main() {
  String frase = 'era vez uma pagagaio chamado pepe';
  List todosItens = [];
  todosItens = frase.split(' ');
  List frasefinal = [];
  for (String item in todosItens) {
    frasefinal.add(item[0].toUpperCase() + item.substring(1));
  }
  print(frasefinal);
}
