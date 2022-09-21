import 'package:flutter/widgets.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_example/pages/products/products_controller.dart';
import 'package:flutter_getit_example/pages/products/products_page.dart';

class ProductsRoute extends FlutterGetItPageRoute {
  const ProductsRoute({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.singleton((i) => ProductsController()),
      ];

  @override
  WidgetBuilder get page => (context) => ProductsPage();
}
