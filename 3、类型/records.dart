import 'dart:core';

void main(){
  var record = ('first', a: 2, b: true, 'last');
  print(record.$1); // Prints 'first'
  print(record.a); // Prints 2
  print(record.b); // Prints true
  print(record.$2); // Prints 'last'

  // Record type annotation in a variable declaration:
  (String, int) record2;
  // Initialize it with a record expression:
  record2 = ('A string', 123);
  var first = record2.$1; //type `String`
  var second = record2.$2; //type `int`

  //In a record type annotation, named fields go inside a curly brace-delimited section of type-and-name pairs, after all positional fields.
  //In a record expression, the names go before each field value with a colon after:
  //在记录类型注释中，命名字段位于以大括号分隔的类型和名称对的部分之后，所有位置字段之后。
  //在记录表达式中，名称在每个字段值之前，后面跟着一个冒号：
  ({int a, bool b}) record1;
  record1 = (a:123, b: true);

  //有不同名称的两个具有命名字段的记录具有不同的类型
  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);
  // Compile error! These records don't have the same type.
  // recordAB = recordXY;

  //In a record type annotation, you can also name the positional fields,
  //but these names are purely for documentation and don't affect the record's type
  (int a, int b) recordAB1 = (1, 2);
  (int x, int y) recordXY1 = (3, 4);
  recordAB1 = recordXY1; // OK.

  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color); // Prints 'true'.
  ({int x, int y, int z}) point1 = (x: 1, y: 2, z: 3);
  ({int r, int g, int b}) color1 = (r: 1, g: 2, b: 3);
  print(point1 == color1); // Prints 'false'. Lint: Equals on unrelated types.

  // Returns multiple values in a record:
  (String name, int age) userInfo(Map<String, dynamic> json) {
   return (json['name'] as String, json['age'] as int);
  }
  final json = <String, dynamic>{
    'name': 'Dash',
    'age': 10,
    'color': 'blue',
  };
  // Destructures using a record pattern with positional fields:
  var (name, age) = userInfo(json);
  /* Equivalent to:
    var info = userInfo(json);
    var name = info.$1;
    var age  = info.$2;
  */


  //({String name, int age}) userInfo(Map<String, dynamic> json)
  // ···
  // Destructures using a record pattern with named fields:
  //final (:name, :age) = userInfo(json);
}
//您可以使用记录类型注释来定义返回类型和参数类型。 You can use record type annotations to define return types and parameter types.
(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
