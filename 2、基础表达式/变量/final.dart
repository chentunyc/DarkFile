import 'dart:core';

void main() {
  //一个 final 变量只能设置一次，const 变量是编译时常量。
  final name = 'Bob';
  final String nickname = 'Bobby';
  // 你不能修改 final 变量的值：
  //name = 'Alice';
  //虽然 final 对象不能被修改，但它的字段可能可以被更改。相比之下，const 对象及其字段不能被更改：它们是 不可变的。
}
