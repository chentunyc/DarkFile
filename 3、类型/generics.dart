import 'dart:core';
abstract class ObjectCache {
  Object getByKey(String key);
  void setByKey(String key, Object value);
}
abstract class StringCache {
  String getByKey(String key);
  void setByKey(String key, String value);
}
abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}
class Foo<T extends Object> {
  // Any type provided to Foo for T must be non-nullable.
}
/*
class Foo<T extends SomeBaseClass> {
  // Implementation goes here...
  String toString() => "Instance of 'Foo<$T>'";
}

class Extender extends SomeBaseClass {...}
var someBaseClassFoo = Foo<SomeBaseClass>();
var extenderFoo = Foo<Extender>();
var foo = Foo();
print(foo); // Instance of 'Foo<SomeBaseClass>'
//var foo = Foo<Object>();
*/

void main(){
  /*wrong
  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  names.add(42); // Error
  */
  var names = <String>['Seth', 'Kathy', 'Lars'];
  var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
  var pages = <String, String>{
    'index.html': 'Homepage',
    'robots.txt': 'Hints for web robots',
    'humans.txt': 'We are people, not machines'
  };  
  var nameSet = Set<String>.from(names);
  //var views = Map<int, View>();
  var names1 = <String>[];
  names1.addAll(['Seth', 'Kathy', 'Lars']);
  print(names1 is List<String>); // true
}
T first<T>(List<T> ts) {
  // Do some initial work or error checking, then...
  T tmp = ts[0];
  // Do some additional checking or processing...
  return tmp;
}