import 'dart:core';

void main(){
  //例如，你可以使用扩展运算符 ( ...) 将一个列表的所有值插入到另一个列表中：
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  assert(list2.length == 4);
  
  //如果扩展运算符右边的表达式可能为空，则可以使用可识别空值的扩展运算符 ( ...?) 来避免异常：
  var list3 = [0, ...?list];
  assert(list3.length == 1);

  /*
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  var nav1 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  */
}