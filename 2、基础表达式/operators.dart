import 'dart:core';

void main() {
  int a=0,b=0,c=0;
  /*
  运算符表达式
  a++;
  a + b;
  a = b;
  a == b;
  c ? a : b;
  a is T;
  */

  /*
  优先级示例
  // Parentheses improve readability.
  if ((n % i == 0) && (d % i == 0)) ...
  // Harder to read, but equivalent.
  if (n % i == 0 && d % i == 0) ...
  */

  //assert语句用于在开发过程中验证代码的正确性，如果条件为false，则会抛出一个异常。
  
  //算术运算符
  assert(2 + 3 == 5);
  assert(2 - 3 == -1);
  assert(2 * 3 == 6);
  assert(5 / 2 == 2.5); // Result is a double
  assert(5 ~/ 2 == 2); // Result is an int
  assert(5 % 2 == 1); // Remainder
  assert('5/2 = ${5 ~/ 2} r ${5 % 2}' == '5/2 = 2 r 1');

  //自加自减
  a = 0;
  b = ++a; // Increment a before b gets its value.
  assert(a == b); // 1 == 1
  a = 0;
  b = a++; // Increment a after b gets its value.
  assert(a != b); // 1 != 0
  a = 0;
  b = --a; // Decrement a before b gets its value.
  assert(a == b); // -1 == -1
  a = 0;
  b = a--; // Decrement a after b gets its value.
  assert(a != b); // -1 != 0

  //比较和关系运算符
  assert(2 == 2);
  assert(2 != 3);
  assert(3 > 2);
  assert(2 < 3);
  assert(3 >= 3);
  assert(2 <= 3);
  
  /*类型运算符
  (employee as Person).firstName = 'Bob';
  if (employee is Person) {
    // Type check
    employee.firstName = 'Bob';
  }
  */

  /*
  赋值运算符
  // Assign value to a
  a = value;
  // Assign value to b if b is null; otherwise, b stays the same
  b ??= value;  
  */

  //复合赋值运算符
  var d = 2; // Assign using =
  d *= 3; // Assign and multiply: a = a * 3
  assert(d == 6); 

  //逻辑运算符
  //if (!done && (col == 0 || col == 3)) {
  // ...Do something...
  //}

  //按位和移位运算符
  final value = 0x22;
  final bitmask = 0x0f;
  assert((value & bitmask) == 0x02); // AND
  assert((value & ~bitmask) == 0x20); // AND NOT
  assert((value | bitmask) == 0x2f); // OR
  assert((value ^ bitmask) == 0x2d); // XOR
  assert((value << 4) == 0x220); // Shift left
  assert((value >> 4) == 0x02); // Shift right
  // Shift right example that results in different behavior on web
  // because the operand value changes when masked to 32 bits:
  assert((-value >> 4) == -0x03);
  assert((value >>> 4) == 0x02); // Unsigned shift right
  assert((-value >>> 4) > 0); // Unsigned shift right 

  //条件表达式
  //var visibility = isPublic ? 'public' : 'private';
  //String playerName(String? name) => name ?? 'Guest';
  
  /*
  // Slightly longer version uses ?: operator.
  String playerName(String? name) => name != null ? name : 'Guest';
  // Very long version uses if-else statement.
  String playerName(String? name) {
    if (name != null) {
      return name;
    } else {
      return 'Guest';
    }
  }
  */

  //级联表示法.级联 （， ） 允许您进行一系列操作 在同一个物体上。除了访问实例成员外， 您还可以在同一对象上调用实例方法。
  //var paint = Paint()
  //..color = Colors.black
  //..strokeCap = StrokeCap.round
  //..strokeWidth = 5.0;
  /*
  var paint = Paint();
  paint.color = Colors.black;
  paint.strokeCap = StrokeCap.round;
  paint.strokeWidth = 5.0;
  */
  //如果级联操作的对象可以为 null， 然后对第一个操作使用空短路级联 （）。 从保证没有级联操作开始 尝试在该 null 对象上。
  //querySelector('#confirm') // Get an object.
  //?..text = 'Confirm' // Use its members.
  //..classes.add('important')
  //..onClick.listen((e) => window.alert('Confirmed!'))
  //..scrollIntoView();
  /*
  var button = querySelector('#confirm');
  button?.text = 'Confirm';
  button?.classes.add('important');
  button?.onClick.listen((e) => window.alert('Confirmed!'));
  button?.scrollIntoView();
  */
  //final addressBook = (AddressBookBuilder()
      //..name = 'jenny'
      //..email = 'jenny@example.com'
      //..phone = (PhoneNumberBuilder()
           // ..number = '415-555-0100'
           // ..label = 'home')
        //  .build())
   // .build();

   //[...a + b]
}
