import 'dart:core';

void main() {
  //整数
  var x = 1;
  var hex = 0xDEADBEEF;
  //小数
  var y = 1.1;
  var exponents = 1.42e5;
  //您也可以将变量声明为 num。如果这样做，变量 可以同时具有整数值和双精度值。
  num x1 = 1;
  x1 += 2.5;
  //该类型指定传统的按位移位 （， ， ）， 补码 （）、AND （）、OR （） 和 XOR （） 运算符， 这对于操作和屏蔽位域中的标志很有用。 例如：int<<>>>>>~&|^
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000
  //文字数字是编译时常量。 许多算术表达式也是编译时常量， 只要它们的操作数是 计算结果为数字的编译时常量。
  const msPerSecond = 1000;
  const secondsUntilRetry = 5;
  const msUntilRetry = secondsUntilRetry * msPerSecond;
}
