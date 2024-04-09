import 'dart:core';


void main(){
  //您还可以创建一个无名函数，称为匿名函数,您可以将匿名函数分配给变量，以便例如将其添加到集合或从集合中删除。
  /*
  主体
  ([[Type] param1[, …]]) {
  codeBlock;
  };
  */
  const list = ['apples', 'bananas', 'oranges'];
  list.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
   print('$item: ${item.length}');
  });
  list
      .map((item) => item.toUpperCase())
      .forEach((item) => print('$item: ${item.length}'));

}