class Person {
  String name;
  int age;
  String _money;

  bool get isAdult => age > 18;

  void work() {
    print('work..,');
  }
}

class Student extends Person {
  void study() {
    super.work();
    print('study...');
  }

  // 覆盖 父类
  @override // 可有可无
  // TODO: implement isAdult
  bool get isAdult => super.isAdult;

}

void main() {
  var s = new Student();
  s.name = 'Tom';
  // s._money 报错
  // 无法继承私有属性
  s.work();
  s.study();
}