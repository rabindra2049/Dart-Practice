import 'package:spread_operator/spread_operator.dart' as spread_operator;

///Prior to Dart 2.3, we have to use addAll to combine two List instances.
/// Now, the spread operator makes it easier for us to do the same thing.


/// Spread Operator are used for inserting multiple emlements in a collection like List, Map etc
void main() {
  print("Before using spread Operator");
  beforeUsingSpreadOperator();
  // Using Spread Operator with list
  print("Using Spread Operator with list");
  usingSpreadOperator();
  // Using Spread Operator with Map
  print("Using Spread Operator with Map");
  spreadOperatorWithMap();
  // Using Spread Operator with Sets
  print("Using Spread Operator with Sets"); 
  spreadOperatorWithSets();

  /**
  Both x and y refer to the same list object, 
  so modifying the list through either reference affects the same underlying list object. 
  This is why both x and y have the same elements and the final output shows that the list is mutable.
   */
  var x = [1,2,3,4];
  var y = x; // y is a reference to the same list as x
  y.add(5); // modify the list through the reference y
  print(x); // Output [1, 2, 3, 4, 5] => mutable
  print(y); // Output => [1, 2, 3, 4, 5]

  /**
   We create a new list b with the same elements as a using the spread operator. 
   Since b is a new list object, modifying it does not affect the original list a.
   This is why a has the original elements and the final output shows that the list is immutable.
   */
  var a = [1,2,3,4];
  var b = [...a]; // create a new list with the same elements as a using the spread operator
  b.add(5); // modify the new list b
  print(a); // Output [1, 2, 3, 4] => immutable
  print(b); // Output => [1, 2, 3, 4, 5]

  
}

void beforeUsingSpreadOperator(){
  List list1 = ["A", "B", "C"];

  List list2 = ["D", "E", "F", list1];

  print(list2); 
  //Result will be [D, E, F, [A, B, C]]
}

void usingSpreadOperator(){
  List list1 = ["A", "B", "C"];

  List list2 = ["D", "E", "F", ...list1];

  print(list2); 
  //Result [D, E, F, A, B, C]

}

void spreadOperatorWithMap(){
  Map map1 = {"name":"John", "age": 21 };
  Map map2 = {"roll no": 45, "class": 12, ...map1};
  print(map2);
    //Result {roll no: 45, class: 12, name: John, age: 21}
  /**
   Map map2 = {"roll no": 45, "class": 12, map1};
   print(map2);

   Error: A value of type 'Set<Map<dynamic, dynamic>>' can't be assigned to a variable of type 'Map<dynamic, dynamic>'.
 - 'Set' is from 'dart:core'.
 - 'Map' is from 'dart:core'.
  Map map2 = {"roll no": 45, "class": 12, map1};
   */

}

void spreadOperatorWithSets(){
  Set<int> s1 = {1,2,3};
  Set<int> s2 = {4,5,6};
  Set<int> result = {...s1,...s2};
  print(result);
  //Result {1, 2, 3, 4, 5, 6}

  /** 
  Set<int> result = {s1,s2};
  print(result);

bin/spread_operator_example_1.dart:57:22: Error: A value of type 'Set<int>' can't be assigned to a variable of type 'int'.
 - 'Set' is from 'dart:core'.
  Set<int> result = {s1,s2};
                     ^
bin/spread_operator_example_1.dart:57:25: Error: A value of type 'Set<int>' can't be assigned to a variable of type 'int'.
 - 'Set' is from 'dart:core'.
  Set<int> result = {s1,s2};
                        ^
  */
}

// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/spread_operator_example_1.dart'