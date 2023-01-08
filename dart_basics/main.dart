num addNumbers(int num1, int num2) {
  return num1 + num2;
}

class Person {
  String? name;
  int? age;

  Person({this.name, this.age});

  Person.withAPlan(this.age) {
    name = 'Dutch';
  }
}

void main() {
  num result = addNumbers(2, 5);
  print('result var $result');
  print('result function ${addNumbers(2, 5)}');

  Person person1 = Person(name: 'Jhon Marston', age: 32);
  print('Person 1 name ${person1.name}');
  print('Person 1 age ${person1.age}');

  Person personWithAPlan = Person.withAPlan(40);
  print('Person with a plan name ${personWithAPlan.name}');
  print('Person with a plan age ${personWithAPlan.age}');
}
