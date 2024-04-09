import 'dart:core';

void main() {
  /*
  非可空变量，必须进行初始化
  对于空安全，你必须在使用非空变量之前初始化它们的值,
  不必在声明变量时初始化变量，但在使用之前需要为其赋值。
  */
  var name = 'Bob';
  Object name1 = 'Bob';
  String name2 = 'Bob';
  /*？ 
  可空变量 默认初始化为null
  你不能在可空类型的表达式上访问属性或调用方法。同样的例外情况适用于 null 支持的属性或方法，例如 hashCode 或 toString() 。
  */
  String? name3;
  //当你在生产环境中运行代码时，assert() 调用会被忽略。另外在开发过程中，assert(condition) 如果其 条件 为 false，会抛出一个异常。
  int? lineCount1;
  assert(lineCount1 == null);
}
