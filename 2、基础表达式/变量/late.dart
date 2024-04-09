import 'dart:core';

void main() {
  /*
  late 修饰符有两种用法：
  声明一个非空变量，但不在声明时初始化。
  延迟初始化一个变量。
  */
  late String description;
  description = 'Feijoada!';
  print(description);
  /*
  当一个 late 修饰的变量在声明时就指定了初始化方法，那么内容会在第一次使用变量时运行初始化。
  在下面的例子中，如果 temperature 变量从未被使用，则 readThermometer() 这个开销较大的函数也永远不会被调用
  */
  late String temperature = readThermometer();
}

String readThermometer() {
  String? apple = 'a';
  return apple;
}
