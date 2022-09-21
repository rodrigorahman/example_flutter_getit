import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_example/pages/products/products_controller.dart';

class ProductsPage extends StatelessWidget {
  final controller = Injector.get<ProductsController>();

  ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Center(
        child: Column(
          children: [
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
