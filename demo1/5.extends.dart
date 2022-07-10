import '2.class.dart';

class Web extends Person {
  String sex;
  Web(String name, int age, int weigth, this.sex)
      : super(name, age, weigth); // 继承

  runSuper() {
    super.printInfo();
  }

  @override
  void printInfo() {
    // super.printInfo();
    print("name: ${this.name} sex: ${this.sex}");
  }
}

main() {
  var web = new Web("name", 20, 20, "男");
  web.printInfo();
  web.runSuper();
}
