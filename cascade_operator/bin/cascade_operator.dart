class Person{
  int? age;
  String? name;

  void printDetails(){
    print("Name - $name :: Age is $age");
  }
}

void main(List<String> arguments) {
  //Without using cascade operator
  Person person = Person();
  person.name = "John";
  person.age = 15;
  person.printDetails();

  // With Cascade operator
  Person()
  ..name = "Doe"
  ..age = 12
  ..printDetails();

}
