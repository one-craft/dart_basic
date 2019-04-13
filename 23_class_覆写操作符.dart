class Person {
  int age;
  
  Person(this.age);

  bool operator >(Person person) {
    return this.age > person.age;
  }
}

void main(List<String> args) {
  var person1 = new Person(18);
  var person2 = new Person(20);
  
  person1 > person2;
}