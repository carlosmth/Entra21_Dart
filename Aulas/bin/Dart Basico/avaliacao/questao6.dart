void main() {
  double valor = 5;
  while (valor >= 0.15) {
    print(valor.toStringAsFixed(2));
    valor = valor / 2;
  }
}
