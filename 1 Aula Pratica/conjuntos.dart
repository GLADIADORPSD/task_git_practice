void main() {
  // Conjuntos
  var carros = {"Fusca", "Brasília", "Chevette"};
  carros.add("Opala");
  carros.add("Maverick");
  carros.add("Fusca");
  print(carros.length);

  for (var carro in carros) {
    print("Carro: $carro");
  }

  Map<String, double> carrosMap = {
    "Fusca": 10000.0,
    "Brasília": 15000.0,
    "Chevette": 20000.0,
    "Ronda": 25000.0
  };

  carrosMap["Opala"] = 25000.0;

  for (var carro in carrosMap.keys) {
    print("Carro: $carro - Valor: ${carrosMap[carro]}");
  }

  for (var valor in carrosMap.values) {
    print("Valor: $valor");
  }

  for (var entrada in carrosMap.entries) {
    print("Carro: ${entrada.key} - Valor: ${entrada.value}");
  }
}
