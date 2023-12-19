import 'dart:io';

void main() {
  bool existir = true;
  do {
    print('''
    
    ********** Bem vindo a feira do Entra21 **********
    Aqui está uma lista dos nossos produtos:
    1 - Fritas R\$30,00
    2 - X-Salada R\$25,00
    3 - Hot-Dog R\$12,00
    4 - Coca-cola lata R\$8,00
    5 - Água mineral R\$2,00
    
    Qual código do produto desejado?''');
    int entrada = int.parse(stdin.readLineSync()!);

    if(entrada > 0 && entrada < 6){
      print('Seu pedido está sendo preparado');
      existir = false;
    } else {
      print('Código não encontrado, por gentileza digite um código valido\n');
      existir = true;
    }
  } while (existir);
}