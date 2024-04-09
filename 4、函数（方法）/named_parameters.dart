import 'dart:core';
void main(){
  // 使用 指定命名参数。如果不提供默认值或将命名参数标记为，则它们的类型必须可空，因为它们的默认值为：{param1, param2, …}requirednull
  /// Sets the [bold] and [hidden] flags ...
  void enableFlags({bool? bold, bool? hidden}) {
   //...
  }
  //调用函数时，可以使用 指定命名参数 。
  enableFlags(bold: true, hidden: false);


  //要为除 之外的命名参数定义默认值null，请使用=指定默认值。指定的值必须是编译时常量。例如
  /// Sets the [bold] and [hidden] flags ...
  void enableFlags1({bool bold = false, bool hidden = false}) {
    ///...
  }
  // bold will be true; hidden will be false.
  enableFlags1(bold: true);

  //const Scrollbar({super.key, required Widget child});
  //标记为的参数required仍然可以为空：
  //const Scrollbar({super.key, required Widget? child});
}












/*
Dart 允许将命名参数放置在参数列表中的任何位置：
repeat(times: 2, () {
  ...
});
*/