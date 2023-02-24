import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_classes.freezed.dart';

part 'freezed_classes.g.dart'; // Json Serializable code will be generated into seperate file

@freezed
abstract class User with _$User {
  const factory User(String name, int age) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

/**
    The following snippet defines a model named User:

    - User has 2 properties: name and age
    - Because we are using @freezed, all of this class's properties are immutable.
    - Since we defined a fromJson, this class is de/serializable. Freezed will add a toJson method for us.
    - Freezed will also automatically generate:
       - a copyWith method, for cloning the object with different properties
       - a toString override listing all the properties of the object
       - an operator == and hashCode override (since User is immutable)
 */
