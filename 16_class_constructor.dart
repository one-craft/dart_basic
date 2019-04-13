class Person {
  String name;
  int age;
  // final String gender;

  Person(this.name, this.age);
  // 语法糖

  // 命名构造方法
  Person.withName(this.name);

  // 常量构造方法
  // const Pserson()
  // 类属性 全部设置成 final

  // 工厂构造方法
  // 关键字 factory
  // 返回一个对象

  // 初始化列表
  // Person.withName(name) : 初始化列表, 初始化列表, 初始化列表, {
  // }
  // 多用于 父类constructor 或 final 赋值
}


void main(List<String> args) {
  var person = Person('Tom', 20);
  var personName = Person.withName('Jack');

  // const personName1 = const Person.withName('Jack')
  // 报错 无法声明常量值 非常量构造函数
}