void main() {
  final listaCarros = ["Fusca", "Brasília", "Chevette"];
  listaCarros.add("Opala");
  listaCarros.add("Maverick");

  print(listaCarros.length);

  for (var i = 0; i < listaCarros.length; i++) {
    print(listaCarros[i]);
  }

  for (var carro in listaCarros) {
    print("Carro: $carro");
  }

  listaCarros.forEach((carro) {
    print("Carro: $carro");
  });

  while (listaCarros.isNotEmpty) {
    print(listaCarros.removeLast());
  }

  print(listaCarros.length);
}
