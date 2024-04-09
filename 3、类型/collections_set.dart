import 'dart:core';

void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  var names = <String>{};
  // Set<String> names = {}; // This works, too.
  // var names = {}; // Creates a map, not a set.

  //使用add()或addAll()方法将项目添加到现有集合：
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);

  //用于.length获取集合中的项目数：
  var elements2 = <String>{};
  elements2.add('fluorine');
  elements2.addAll(halogens);
  assert(elements2.length == 5);

  //常量集合
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
    'iodine',
    'astatine',
  };
  // constantSet.add('helium'); // This line will cause an error.
}