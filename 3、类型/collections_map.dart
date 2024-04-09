import 'dart:core';

void main(){
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  //您可以使用 Map 构造函数创建相同的对象：
  var gifts1 = Map<String, String>();
  gifts1['first'] = 'partridge';
  gifts1['second'] = 'turtledoves';
  gifts1['fifth'] = 'golden rings';

  var nobleGases2 = Map<int, String>();
  nobleGases2[2] = 'helium';
  nobleGases2[10] = 'neon';
  nobleGases2[18] = 'argon';

  //它使用 [] 运算符将另一个键值对 'fourth': 'calling birds' 添加到 gifts2 中。
  var gifts2 = {'first': 'partridge'};
  gifts2['fourth'] = 'calling birds'; // Add a key-value pair

  //使用 Map 的下标运算符 [] 来从 Map 中检索（获取）一个值。 
  var gifts3 = {'first': 'partridge'};
  assert(gifts3['first'] == 'partridge');
  var gifts4 = {'first': 'partridge'};
  assert(gifts4['fifth'] == null); 
  
  var gifts5 = {'first': 'partridge'};
  gifts5['fourth'] = 'calling birds';
  assert(gifts5.length == 2);

  //常量
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  // constantMap[2] = 'Helium'; // This line will cause an error.
}