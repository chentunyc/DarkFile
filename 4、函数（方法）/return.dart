void main(){
  //所有函数都会返回一个值。如果没有指定返回值，则语句return null;会隐式附加到函数主体中。
  foo() {}
  assert(foo() == null);



  //要在函数中返回多个值，请聚合记录中的值。
  (String, int) foo1() {
    return ('something', 42);
  } 
}
