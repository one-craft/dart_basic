void main(List<String> args) {
  /**
   * 使用关键字 class 声明一个类
   * 使用关键字 new 创建一个对象, new可省略
   * 所有对象都继承于 Object 类
   */

  var person = new Person();
  // var person = Person(); 省略 new

  person.name = 'zhangsan';

  /**
   * 属性默认生成 getter setter 方法
   * final属性只有 getter 方法
   * 方法不可以重载
   * 使用 点运算符 访问
   */
}

class Person {
  String name;
}

// class _Person { } _ 模块私有命名 对外不可见
// 内部也是按照 _ 命名确定私有属性 方法