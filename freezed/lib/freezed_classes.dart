import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_classes.freezed.dart';
part 'freezed_classes.g.dart'; // Json Serializable code will be generated into seperate file

@freezed
@immutable
abstract class User with _$User{
    const factory User(String name, int age) = _User;
    factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}