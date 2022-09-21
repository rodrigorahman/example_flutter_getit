import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_example/pages/home/home_controller.dart';
import 'package:flutter_getit_example/widgets/counter_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = context.get<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: controller,
            builder: (context, child) => Text(controller.nome),
          ),
          ElevatedButton(
            onPressed: () => controller.changeName('Nome Alterado'),
            child: const Text('Alterar Nome'),
          ),
          const Divider(color: Colors.red, thickness: 4),
          const SizedBox(
            height: 50,
          ),
          const CounterWidget(),
          const Divider(color: Colors.blue, thickness: 4),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pushNamed('/products'),
            child: const Text('Ir para produtos'),
          )
        ],
      ),
    );
  }
}
