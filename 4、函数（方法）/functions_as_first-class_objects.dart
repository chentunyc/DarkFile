import 'dart:core';


void main(){
  //您可以将一个函数作为参数传递给另一个函数。例如：
  void printElement(int element) {
    print(element);
  }
  var list = [1, 2, 3];
  // Pass printElement as a parameter.
  list.forEach(printElement);
  //您还可以将函数分配给变量，例如：
  var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';
  assert(loudify('hello') == '!!! HELLO !!!');
}