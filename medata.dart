import 'dart:mirrors';

main(List<String> args) {
  getWorkAnnotation();
}

void getWorkAnnotation() {
  ClassMirror classMirror = reflectClass(TestMixin);

  // 获取 class 上的元数据
  // classMirror.metadata.forEach((metadata) {
  //   print(metadata.reflectee.who + ' ==> ' + metadata.reflectee.what);
  // });

  // print('class metadata ====================');

  // 获取 field 和 method 上的元数据
  classMirror.declarations.forEach((Symbol key, DeclarationMirror value) {
    print('======================');
    print(value);
    print(value.simpleName);
    if (value is MethodMirror) {
      if (value.simpleName == #getRequest) {
        value.metadata.forEach((metadata) {
          if (metadata.reflectee is Todo) {
            print(metadata.reflectee.who + ' ==> ' + metadata.reflectee.what);
          } 
          // else if (metadata.reflectee is TestAnnotation) {
          //   print(metadata.reflectee.id.toString() +
          //       ' ==> ' +
          //       (metadata.reflectee.name == null
          //           ? 'null'
          //           : metadata.reflectee.name));
          // } 
          else if (metadata.reflectee is GET) {
            print(metadata.reflectee.value);
          }
        });

        // 获取方法中参数上的元数据
        value.parameters.forEach((param) {
          param.metadata.forEach((metadata) {
            print('-----$metadata');
            print('-----${metadata.reflectee}');
            if (metadata.reflectee is GET) {
              if (metadata.reflectee.value == null) {
                print('args name ==> ' + MirrorSystem.getName(param.simpleName));
              } else {
                print(metadata.reflectee.value);
              }
            }
          });
        });
      }
    } else if(value is VariableMirror) {
      print(value);
    }
  });
}

@Todo('zhangqi', 'test')
@Todo('wyndam', 'work')
abstract class TestMixin {
  @Todo('zhangqi', 'property todo')
  String name = 'zhangqi';

  @GET(value: 'https://www.baidu.com/')
  void getRequest(@GET() String param);
}

class GET {
  final String value;

  const GET({this.value});
}

class Todo {
  final String who;
  final String what;

  const Todo(this.who, this.what);
}
