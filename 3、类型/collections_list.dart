import 'dart:core';

void main(){
  var list = [1, 2, 3];
  var list2 = [
    'Car',
    'Boat',
    'Plane',
  ];
  var list3 = [1, 2, 3];
  assert(list3.length == 3);
  assert(list3[1] == 2);
  list3[1] = 1;
  assert(list3[1] == 1);

  //常量链表
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // This line will cause an error.
}