import 'package:freezed_example/freezed_classes.dart';

void main() {
  print(SomeClass() == SomeClass()); // Output : False

  final user = User("John", 12);
  // We cann't reassign age
  // user.age = 12;
  final user2 = user.copyWith(name: "Hero");
  print(user); //User(name: John, age: 12)
  print(user2); //User(name: Hero, age: 12)

  print(User('Matt', 20) == User('Matt', 20)); // Output : true

  final johnUSer = User('John', 12);

  final serialized = johnUSer.toJson(); //{name: John, age: 12}
  final deserialized = User.fromJson(serialized); //User(name: John, age: 12)

  print(serialized);
  print(deserialized);

  final result = performOperation(2, Add(2));
  print(result);

  final subResult = performOperation(2, Operation.subtract(1));
  print(subResult);
}

// Kotlin -> data class User(val name: String, val age: Int)
class SomeClass {
  final int x = 1;
}

// Function pretending to do something useful
int performOperation(int operand, Operation operation) {
  //Like switch state but forgetting about a cases will result in info/error.

/*
  return operation.maybeWhen(
      add: (value) => operand + value,
      subtract: (value) => operand - value,
      orElse: () => -1);
*/

  /*return operation.when(
      add: (value) => operand + value, subtract: (value) => operand - value);*/

  return operation.map(
      add: (caseClass) => operand + caseClass.value,
      subtract: (caseClass) => operand - caseClass.value);
}
