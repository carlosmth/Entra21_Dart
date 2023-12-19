void main() {
  String frase = 'fusca,1980,pé de moleque,501,11.7,0,71,.alface,macarrão';
  List todosItens = [];
  todosItens = frase.split(',');

  for (String item in todosItens) {
    num? numero = num.tryParse(item);
    if (numero != null) {
      print(numero);
    }
  }
}
