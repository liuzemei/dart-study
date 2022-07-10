main() {
  print("你好 dart");
  // varDemo();

  // constDemo();

  // typeDemo();

  // opDemo();

  // typeTransDemo();

  // listDemo();

  // mapDemo();

  print(printUserInfo("name"));
}

// 变量
void varDemo() {
  var str = '你好 dart';
  print(str);

  var num = 1234;
  print(num);

  String str1 = '你好1 dart';
  print(str1);

  int num1 = 456;
  print(num1);
}

// 常量
void constDemo() {
  // final / const 修饰符
  // final 可以开始不赋值, 只能赋值一次.
  // final 可以在运行时使用.
  final name;
  name = 'Bo';
  print(name);

  const name1 = 'Test';
  print(name1);
}

// 类型
void typeDemo() {
  // int double String bool
  var str = 'this is str';
  print(str);

  // 1. 多行字符串
  var str_muti = '''
this is str11

this is str22...

''';

  // 2. 字符串拼接
  String str1 = '你好';
  String str2 = 'dart';
  print(str1 + str2);
  print("$str1 $str2");

  int a = 32;
  double b = 23; // 可以是整形
  var c = a + b;
  print(c);

  // 3. List
  var l1 = ['zhangsan', 20, true];
  print(l1.length);
  // print(l1[0].hashCode);

  var l2 = <String>['1232']; // 指定集合的类型
  print(l2[0]);
  l2.add('234');

  var l3 = List.filled(2, ""); // 创建一个固定长度的集合
  l3[0] = 'test';
  l3[1] = '123';
  print(l3);

  // 4. Maps
  var p = new Map();
  p['name'] = 'zhangsan';
  p['age'] = 20;
  p['isMan'] = true;
  p['work'] = ['程序员', '送外卖'];
  print(p);
  print(p['age']);

  var p1 = {
    'name': 'lisi',
    'age': 18,
    'isMan': false,
    'work': ['程序员', '送外卖']
  };
  p1['test'] = 'haha';
  print(p1);

// 5. 类型判断
  var typeChange = '1232';
  if (typeChange is String) {
    print('str is String');
  } else if (typeChange is int) {
    print('str is int');
  } else {
    print('str is other');
  }
}

// 运算符
void opDemo() {
  // ~/ 取整

  // 赋值运算符
  // ??= 如果为空则赋值
  // int a = 0;

  // var b = a ?? 10;
  // print(b);
}

// 类型转换
void typeTransDemo() {
  // string -> number
  // type.parse()
  try {
    String str = '';
    var num = int.parse(str);
    print(num);
  } catch (e) {
    print(e);
    print(0);
  }

  // number -> string
  // type.toString()
  var num = 123;
  var str = num.toString();
  print(str);

  print(str.isEmpty); // string -> bool
  print(str == ''); // string -> bool
  print(num == 0); // number -> bool
  var test;
  test = 1;
  print(test == null);
}

// 循环
void forDemo() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  while (true) {
    break;
  }

  do {
    break;
  } while (true);
}

// list
void listDemo() {
  // 常用属性
  // length reversed isEmpty isNotEmpty

  // 常用方法
  // add 增加
  // addAll 拼接数组
  // indexOf(value) 查找 (传值)
  // remove(value) 移除 (传值)
  // removeAt(index) 移除 (传索引)
  // fillRange(start,end,value) 批量修改
  // insert(inex, value)
  // insertAll(index, list)
  // toList 其他类型转换成List
  // join() // List -> 字符串
  // split() // string -> list
  // forEach
  // map
  // where // 条件过滤(filter)
  // any // 是否存在
  // every // 是否全部存在
  // reduce // 合并
  // sort // 排序
  // sublist // 切片

  // 反转List
  var l1 = [1, 2, 3, 1, 2, 3, 4];
  var l2 = l1.reversed.toList();
  print(l2);
  print(l2.toSet().toList());
  for (var item in l2) {
    print(item);
  }
}

// set 去重
void setDemo() {
  var s = new Set();
  s.add('香蕉');
  s.add('苹果');
  s.add('苹果');
  s.toList();
}

// map
void mapDemo() {
  // 常用属性
  // keys values isEmpty isNotEmpty

  // 常用方法
  // remove(key) 删除指定 key
  // addAll({...}) 合并 map
  // containsValue 是否存在指定值
  // containsKey 是否存在指定 key
  // forEach 循环
  // map
  var p = {
    'name': 'zhangsan',
    'age': 20,
    'isMan': true,
    'work': ['程序员', '送外卖']
  };

  p.forEach((key, value) {
    print('$key: $value');
  });
}

// function
/*
返回类型 方法名称(参数1,参数2) {
  // 方法体
}
*/
String printUserInfo(String name, [sex = '男', age]) {
  if (age == null) {
    return "姓名$name 性别:$sex";
  }
  return "姓名: $name---年龄: $age 性别:$sex";
}
