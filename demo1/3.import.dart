import '2.class.dart';

main() {
  var p = new Person("lisi", 123, 123);
  print(p.name);
  p.printInfo();
  var p1 = new Person.now();
  p1.printInfo();

  // 私有属性
  // print(p._weight);
  print(p.getWeight());
  p.execRun();

  var rect = new Rect(100, 100);
  rect.areaHeigth = 200;
  print(rect.getArea());
  print(rect.area);
}
