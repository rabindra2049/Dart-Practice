import 'package:freezed_example/freezed_classes.dart';

void main() {
  print(SomeClass() == SomeClass()); // Output : False

  final user = User("John", 12);
  // We cann't reassign age
 // user.age = 12;
  final user2 = user.copyWith(name : "Hero");
  print(user); //User(name: John, age: 12)
  print(user2);//User(name: Hero, age: 12)

  print(User('Matt',20) == User('Matt',20)); // Output : true

  final johnUSer = User('John', 12);

  final serialized = johnUSer.toJson(); //{name: John, age: 12}
  final deserialized = User.fromJson(serialized); //User(name: John, age: 12)

  print(serialized);
  print(deserialized);
}

// Kotlin -> data class User(val name: String, val age: Int)
class SomeClass {
  final int x = 1;
}
