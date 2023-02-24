import 'package:spread_operator/spread_operator.dart' as spread_operator;

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

  var x = [1,2,3,4];
  var y = x;
  y.add(5);
  print(x); // Output [1, 2, 3, 4, 5] => mutable
  print(y); // Output => [1, 2, 3, 4, 5]

  var a = [1,2,3,4];
  var b = [...a];
  b.add(5);
  print(a); // Output [1, 2, 3, 4] => i,mutable
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