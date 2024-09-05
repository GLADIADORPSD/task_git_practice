void main() {
  //Uso de todas as funcionalidades do Dart usando funções, classes, enums, herança, mixins, interfaces e async
  // Variáveis
  var name = "John";
  var age = 25;
  printInfo(name, age);

  // Enums
  print(currentStatus);

  // Inheritance
  var teacher = Teacher("Mary", "Math");
  print("Teacher: ${teacher.name} - Subject: ${teacher.subject}");

  // Mixins
  var human = Human();
  human.walk();

  // Interfaces and abstract classes
  var dog = Dog();
  dog.speak();

  // Async
  fetchData();
}

void printInfo(name, age) {
  print('Name: $name, Age: $age');
}

// Enums
enum Status { active, inactive, pending }

Status currentStatus = Status.active;

// Inheritance
class Person {
  String name;
  Person(this.name);
}

class Teacher extends Person {
  String subject;
  Teacher(String name, this.subject) : super(name);
}

// Mixins
mixin Walking {
  void walk() {
    print("Walking...");
  }
}

class Human with Walking {}

// Interfaces and abstract classes
abstract class Animal {
  void speak();
}

class Dog implements Animal {
  void speak() {
    print("Bark!");
  }
}

// Async
Future<void> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  print("Data fetched");
}
