void printHello() {
  print('hello');
}

String times(String str) {
  return str * 3;
}

void main() {
  Function a = printHello;

  a();
}