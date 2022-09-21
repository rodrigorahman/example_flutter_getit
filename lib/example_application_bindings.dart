import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_example/global_dependencies/user_model.dart';

class ExampleApplicationBindings extends ApplicationBindings {
  @override
  List<Bind<Object>> bindings() {
    final user = Bind.lazySingleton((i) => UserModel(
        name: 'Rodrigo Rahman Pelo application binding',
        email: 'rodrigorahman@academiadoflutter.com.br'));

    return [user];
  }
}
