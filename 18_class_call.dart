class Person {
  call() {
    print('call');
  }
}


void main(List<String> args) {
  var person = Person();

  person();
}