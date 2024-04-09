import 'dart:core';
void main(){
  //包装一组函数参数会将[] 它们标记为可选位置参数。如果不提供默认值，则它们的类型必须是可空的，因为它们的默认值将是null：
  String say(String from, String msg, [String? device]) {
    var result = '$from says $msg';
    if (device != null) {
     result = '$result with a $device';
    }
    return result;
  }
  //以下是调用此函数而不使用可选参数的示例：
  assert(say('Bob', 'Howdy') == 'Bob says Howdy');
  //下面是使用第三个参数调用该函数的示例：
  assert(say('Bob', 'Howdy', 'smoke signal') =='Bob says Howdy with a smoke signal');

  //为了为可选的位置参数定义默认值，除了使用 = 外，还可以使用 : 来指定默认值。指定的值必须是编译时常量。例如：
  String say1(String from, String msg, [String device = 'carrier pigeon']) {
   var result = '$from says $msg with a $device';
   return result;
  }
  assert(say1('Bob', 'Howdy') == 'Bob says Howdy with a carrier pigeon');
}


