import 'dart:core';
//闭包是一个函数对象，即使函数在其原始范围之外使用，它也可以访问其词法范围中的变量。
//函数可以覆盖周围作用域中定义的变量。在下面的例子中，makeAdder()捕获变量addBy。无论返回的函数去往何处，它都会记住addBy。
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}