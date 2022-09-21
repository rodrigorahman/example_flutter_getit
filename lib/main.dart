import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_example/example_application_bindings.dart';
import 'package:flutter_getit_example/global_dependencies/user_model.dart';
import 'package:flutter_getit_example/pages/home/home_controller.dart';
import 'package:flutter_getit_example/pages/home/home_page.dart';
import 'package:flutter_getit_example/pages/products/products_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      // bindingsBuilder: () => [
      //   Bind.lazySingleton((i) => UserModel(
      //       name: 'Rodrigo Rahman',
      //       email: 'rodrigorahman@academiadoflutter.com.br'))
      // ],
      bindings: ExampleApplicationBindings(),
      // child: MaterialApp(
      //   title: 'Flutter Demo',
      //   theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //   ),
      //   routes: {
      //     '/': (context) => FlutterGetItPageBuilder(
      //           binding: () => Bind.singleton((i) => HomeController()),
      //           page: (context) => const HomePage(),
      //         ),
      //     '/products': (context) => const ProductsRoute()
      //   },
      // ),
      builder: (context, child) {
        debugPrint(
          context.get<UserModel>().email,
        );
        return MaterialApp(
          title: context.get<UserModel>().email,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/': (context) => FlutterGetItPageBuilder(
                  binding: () => Bind.singleton((i) => HomeController()),
                  page: (context) => const HomePage(),
                ),
            '/products': (context) => const ProductsRoute()
          },
        );
      },
    );
  }
}
