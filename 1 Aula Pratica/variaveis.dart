import 'dart:math';

void main() {
  print("Olá Mundo");

  // Variáveis
  String nome = "João";
  nome = "João da Silva";
  print(nome);

  // Inferência de tipo
  var sobrenome = "da Silva";
  print(sobrenome);

  num idade = 1.20;
  print(idade);
  int idadeInteiro = 30;
  print(idadeInteiro);
  dynamic variavel = 1;
  print(variavel);
  variavel = "João";
  print(variavel);

  // Constantes
  const pi = 3.14;
  print(pi);

  // Final
  final piFinal = Random().nextInt(100);
  print(piFinal);
}
