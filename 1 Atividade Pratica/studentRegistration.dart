import 'dart:io';

class Aluno {
  int codigo;
  String nome;
  int idade;
  String endereco;

  Aluno(this.codigo, this.nome, this.idade, this.endereco);
}

void main() {
  List<Aluno> alunos = [];

  while (true) {
    print('Menu:');
    print('1 - Cadastrar');
    print('2 - Buscar');
    print('3 - Imprimir');
    print('4 - Sair');
    print('Escolha uma opção:');

    String? opcao = stdin.readLineSync();

    if (opcao == '1') {
      cadastrarAluno(alunos);
    } else if (opcao == '2') {
      buscarAluno(alunos);
    } else if (opcao == '3') {
      imprimirAlunos(alunos);
    } else if (opcao == '4') {
      break;
    } else {
      print('Opção inválida. Tente novamente.');
    }
  }
}

void cadastrarAluno(List<Aluno> alunos) {
  print('Digite o código do aluno:');
  int codigo = int.parse(stdin.readLineSync()!);

  print('Digite o nome do aluno:');
  String nome = stdin.readLineSync()!;

  print('Digite a idade do aluno:');
  int idade = int.parse(stdin.readLineSync()!);

  print('Digite o endereço do aluno:');
  String endereco = stdin.readLineSync()!;

  Aluno aluno = Aluno(codigo, nome, idade, endereco);
  alunos.add(aluno);

  print('Aluno cadastrado com sucesso!');
}

void buscarAluno(List<Aluno> alunos) {
  print('Digite o código do aluno que deseja buscar:');
  int codigo = int.parse(stdin.readLineSync()!);

  List<Aluno> alunosEncontrados =
      alunos.where((aluno) => aluno.codigo == codigo).toList();

  if (alunosEncontrados.isEmpty) {
    print('Nenhum aluno encontrado com o código informado.');
  } else {
    print('Alunos encontrados:');
    for (Aluno aluno in alunosEncontrados) {
      print('Código: ${aluno.codigo}');
      print('Nome: ${aluno.nome}');
      print('Idade: ${aluno.idade}');
      print('Endereço: ${aluno.endereco}');
      print('=========================');
    }
  }
}

void imprimirAlunos(List<Aluno> alunos) {
  if (alunos.isEmpty) {
    print('Nenhum aluno cadastrado.');
  } else {
    print('Alunos cadastrados:');
    for (Aluno aluno in alunos) {
      print('Código: ${aluno.codigo}');
      print('Nome: ${aluno.nome}');
      print('Idade: ${aluno.idade}');
      print('Endereço: ${aluno.endereco}');
      print('=========================');
    }
  }
}
