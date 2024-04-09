import 'dart:core';

void main() {
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
  var s = 'string interpolation';
  //可以使用表达式将表达式的值放在字符串中。如果表达式是标识符，则可以跳过 这。为了获取与对象对应的字符串，Dart 调用 对象的方法。${}{}toString()
  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' 'which is very handy.');
  assert('That deserves all caps. ' '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' 'STRING INTERPOLATION is very handy!');
  //您可以使用相邻的字符串文本或运算符连接字符串：+
  var s11 = 'String ' 'concatenation' " works even over line breaks.";
  assert(s11 == 'String concatenation works even over ' 'line breaks.');
  var s22 = 'The + operator ' + 'works, as well.';
  assert(s22 == 'The + operator works, as well.');

  //若要创建多行字符串，请使用三引号和 单引号或双引号：
  var s111 = '''
  You can create
  multi-line strings like this one.
  ''';
  var s2222 = """This is also a
  multi-line string.""";
  var s5 =
      r'In a raw string, not even \n gets special treatment.'; //您可以通过在“原始”字符串前面加上以下前缀来创建“原始”字符串：r
  //只要任何插值表达式都是编译时常量 计算结果为 null 或数值、字符串值或布尔值。
  // These work in a const string.
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // These do NOT work in a const string.
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3];

  const validConstString = '$aConstNum $aConstBool $aConstString';
  // const invalidConstString = '$aNum $aBool $aString $aConstList';
}
