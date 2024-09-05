void main() {
  var carro = Carro();
  carro.marca = "Fiat";
  carro.preco = 50000.0;

  print("Marca: ${carro.marca} - Preço: ${carro.preco}");

  var animal = Animal();
  animal.nome = "Leão";
  animal.peso = 200.0;
  print("Nome: ${animal.nome} - Peso: ${animal.peso}");

  var aluno = Aluno(nome: "João", idade: 25, nota: 9.5);
  aluno.imprimirDados();
}

class Carro {
  String marca = "";
  double preco = 0.0;
}

class Animal {
  String? nome;
  double? peso;
}

class Aluno {
  String? nome;
  int? idade;
  double? nota;

  Aluno({this.nome, this.idade, this.nota});

  void imprimirDados() {
    print("Nome: $nome - Idade: $idade - Nota: $nota");
  }
}
