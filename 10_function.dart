void main() {
  // 返回类型   方法名（参数1，参数2,....）{
  //   方法体…
  //   return 返回值 
  // }
  // 返回值类型、参数类型都可省略；

  String test(String a) {
    return 'hello world $a';
  }

  // 方法都有返回，默认返回null return null;
  // => 语法，适用于方法体只有一个表达式的情况

  // 可选参数
  // 可选命名参数,调用时使用名称传值。
  printPerson(String name,{int age,String gender}){
    print("name=$name,age=$age,gender=$gender");
  }

  //方法调用
  printPerson("李四",age: 20);
  printPerson("李四",gender: "Male");

  // 可选位置参数，调用时根据参数位置传递对应类型。
  printPerson2(String name,[int age,String gender]){
    print("name=$name,age=$age,gender=$gender");
  }

  //方法调用 
  printPerson2("张三",18);
  printPerson2("张三",18,"Female");

  // 默认值
  void printPerson3(String name,{int age = 30,String gender = "Female"}){
    print("name=$name,age=$age,gender=$gender");
  }
}