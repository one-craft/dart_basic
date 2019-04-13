void main() {

  // 匿名函数直接复制给变量
  var func = (str) {
    print('hello ---- $str');
  };

  func('word');
}