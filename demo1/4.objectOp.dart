/*

? 条件运算符
as 类型转换
is 类型判断
.. 级联操作

*/

import '2.class.dart';

main() {
  var p;
  p = 1;
  p = new Person("name", 10, 10);
  // p.printInfo();
  (p as Person).printInfo();
  if (p is Person) {
    p.printInfo();
  }

  p
    ..age = 30
    ..name = "test"
    ..printInfo();
}
