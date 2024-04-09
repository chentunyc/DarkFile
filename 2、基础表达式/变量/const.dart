import 'dart:core';

void main() {
  /*
  const 修饰 编译时常量 的变量。
  如果 const 变量位于类级别，请将其标记为 static const（静态常量）。
  在声明变量的位置，将其值设置为编译时常量，比如数字、字符串、const 常量或在常量数字上进行的算术运算的结果：
  */
  const bar = 1000000;
  const double atm = 1.01325 * bar;

  /*
  const 关键字不仅仅可用于声明常量，你还可以使用它来创建常量 值(values)，
  以及声明 创建(create) 常量值的构造函数。任何变量都可以拥有常量值。
  */
  var foo = const [];
  final bar1 = const [];
  const baz = []; // Equivalent to `const []`

  //如果变量的值没有被 final 或者 const 修饰，即使它以前被 const 修饰，你也可以修改这个变量：
  foo = [1, 2, 3]; // Was const []

  //你不能修改 const 变量的值：
  //baz = [42];

  //你可以在定义常量时使用 类型检查和转换（is 和 as）、 集合中的 if 和 展开操作符（... 和 ...?）：
  const Object i = 3;
  const list = [i as int];
  const map = {if (i is int) i: 'int'};
  const set = {if (list is List<int>) ...list};
}
