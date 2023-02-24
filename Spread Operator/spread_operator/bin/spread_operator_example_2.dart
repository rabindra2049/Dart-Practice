import 'package:spread_operator/spread_operator.dart' as spread_operator;

void main() {
   List<int> l1 = [1, 2, 3];
   spreadOperatorWithNull(l1);
   spreadOperatorWithNullAware(l1);
}

void spreadOperatorWithNull(List<int> list1){
  /**
    List<int>? nullList = null;
    List<int> result = [...list1 , ...nullList];
    print(result);
    Error: An expression whose value can be 'null' must be null-checked before it can be dereferenced.
    List<int> result = [...list1 , ...nullList];
                                    ^
  */
}

void spreadOperatorWithNullAware(List<int> list1){
  List<int>? nullList = null;
  List<int> result = [...list1 , ...?nullList];
  print(result);
  //Result [1, 2, 3]
}

// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/spread_operator_example_1.dart'