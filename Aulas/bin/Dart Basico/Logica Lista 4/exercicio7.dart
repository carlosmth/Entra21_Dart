import 'dart:io';

void main() {
  print('Número inicial:');
  int n1 = int.parse(stdin.readLineSync()!);
  print('Número final:');
  int n2 = int.parse(stdin.readLineSync()!);

  if (n1 < n2) {
    for (int i = n1 + 1; i < n2; i++) {
      print(i);
    }
  } else {
    print('O número inicial não pode ser menor que o número final');
  }
}
