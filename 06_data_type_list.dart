// List 类似 js 的数组
/**
 * 常用属性
 * length isEmpty isNotEmpty
 * 常用方法
 * add()
 * insert(index, '')
 * remove()
 * clear()
 * indexOf()
 * sort()
 * subList(startIndex, endIndex) 含头不含尾
 * forEach()
 */

void main() {
  var list1 = [1 ,2, 3, 4, 5, 6];

  // 创建不可变的List
  var list2 = const[1, 2, 3];
  const list3 = [1, 2, 3];

  // 使用类创建
  var list4 = new List(); // []

  print(list1.sublist(1,2));
}