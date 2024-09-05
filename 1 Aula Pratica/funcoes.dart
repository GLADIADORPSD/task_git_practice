void main() {
  final resultado = soma(10, 20);

  print("O resultado é: $resultado");

  final resultadoMultiplicacao = multiplicar(10, 20);

  print("O resultado da multiplicação é: $resultadoMultiplicacao");

  imprimir("Olá, Dart!");

  executarPor(10, imprimir, "Muito legal");
}

int soma(int a, int b) {
  return a + b;
}

// Função Dynamic
multiplicar(int a, int b) {
  return a * b;
}

void imprimir(String valor) {
  print("O valor é: $valor");
}

//função que tem uma função como parametro
void executarPor(int vezes, Function(String) funcao, String valor) {
  for (int i = 0; i < vezes; i++) {
    funcao(valor);
  }
}
