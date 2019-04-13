class A {
  void a () {
    print('A.a ...');
  }
}

class B {
  void b () {
    print('B.b ...');
  }
}

class C {
  void c () {
    print('C.c ...');
  }
}

class D extends A with B, C {

  // Mixin 后, 相同名字 取最后的值
  // 作为 Mixin 的类 不能有构造方法
  // 只能继承 Object


  // void d () {
  //   print('D.d ...');
  // }
}

// class D = A with B, c; 简写

void main(List<String> args) {
  var d = new D();
  d.a();
}