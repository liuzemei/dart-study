class Person {
  static String type = 'person';
  String name = '张三';
  int age = 20;

  int _weigth = 100; // 这是一个私有的变量, 只有在单独的文件中才会生效

  // 这是构造函数里的内容, 实例化的时候触发
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
  Person(this.name, this.age, this._weigth); // 简写

  Person.now() {
    print('now');
  } //具名构造函数 可以多个
  void printInfo() {
    // print("$name $age");
    print("${this.name} --- ${this.age}");
  }

  int getWeight() {
    return _weigth;
  }

  _run() {
    print('这是一个私有的方法');
  }

  execRun() {
    _run();
  }
}

class Rect {
  num height;
  num width;
  Rect(this.height, this.width);

  get area {
    return height * width;
  }

  getArea() {
    return height * width;
  }

  set areaHeigth(value) {
    this.height = value;
  }

  get test {
    return this.test;
  }

  set test(v) {
    this.test = v;
  }
}
