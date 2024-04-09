import 'dart:core';
void main(){
  var result = fibonacci(20);
  print(result);
}
int fibonacci(int n){
  //为每个函数的参数以及返回值都指定类型
  if(n==0||n==1) return n;
  return fibonacci(n-1)+fibonacci(n-2);
}