// ' " 创建字符串
// ''' """ 创建多行文本
// 在字符串前加r，打印非转移字符串
/**
 * 运算符号 + * == []
 * 插值表达式 $ ${}
 * 常用属性 length isEmpty isNotEmpty
 * 常用方法 contains() subString() startsWith() endsWith() indexOf() lastIndexOf()
 *        toLowerCase() toUpperCase() trim() trimLeft() trimRight() 
 * 
 */

void main() {
  String str1 = 'Hello';

  String str2 = "hello \n world";
  String str3 = r"hello \n world";

  print(str2);
  print(str3);

  String str4 = "hello";
  print(str4 + ' world');
  print(str4 * 5); // 字符重复五次
  print(str4[0]);
  print(str3 == str4);

  num a = 5;
  num b = 4;
  print("a = $a");
  print("a + b = ${a + b}");
}