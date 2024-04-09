import 'dart:core';
void main(){
  var name ='Voyager I';
  var flybyObjects=['Jupiter','Saturm','Uranus','Neptune'];
  /*
  这行代码的作用是从 flybyObjects 列表中选取出包含字符串 'turn' 的元素，并对每个选取出的元素执行 print 函数。
  具体来说，where 方法接受一个回调函数作为参数，
  这个回调函数会对列表中的每个元素进行判断，如果回调函数返回 true，则该元素被保留在结果集合中。
  而 forEach 方法则对结果集合中的每个元素执行指定的操作，这里是执行 print 函数。
  */
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}
