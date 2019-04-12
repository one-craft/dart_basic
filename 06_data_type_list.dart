// List 类似 js 的数组
/**
 * 常用属性
 * length isEmpty isNotEmpty
 * 常用方法
 * add()
 * insert(index, '') 插入
 * remove()
 * clear()
 * indexOf()
 * sort()
 * subList(startIndex, endIndex) 含头不含尾
 * forEach()
 * shuffle() 打乱
 *  asMap() return map 转换成map
 */

void main() {
  var list1 = [1 ,2, 3, 4, 5, 6];

  // 创建不可变的List
  var list2 = const[1, 2, 3];
  // list2[0] = 5; 报错,内容不可变
  const list3 = [1, 2, 3];

  // 使用类创建
  var list4 = new List(); // []

  print(list1.sublist(1,2));

  list1.shuffle();
  print(list1);

  var map1 = list1.asMap();
  print(map1);

  list1.forEach(print);
}