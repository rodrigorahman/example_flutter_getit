import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_example/global_dependencies/user_model.dart';
import 'package:flutter_getit_example/pages/products/products_controller.dart';

class ProductsPage extends StatelessWidget {
  final controller = Injector.get<ProductsController>();

  ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userModel = context.get<UserModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: Text(userModel.name),
              subtitle: Text(userModel.email),
            ),
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) => Text(controller.product),
            ),
            ElevatedButton(
              onPressed: () => controller.changeProduct('Jornada GetX'),
              child: const Text('Alterar Endereço'),
            )
          ],
        ),
      ),
    );
  }
}
