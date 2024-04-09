import 'dart:core';
/*
同步生成器：返回一个Iterable对象。
异步生成器：返回一个Stream对象。
*/
//要实现同步生成器函数，请将函数体标记为sync*，并使用yield语句传递值：
Iterable<int> naturalsTo(int n) sync* {
  int k = 0;
  while (k < n) yield k++;
}
//要实现异步生成器函数，请将函数体标记为async*，并使用yield语句传递值：
Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}
//如果你的生成器是递归的，你可以使用以下方法来提高其性能yield*：
Iterable<int> naturalsDownFrom(int n) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}
void main(){

}