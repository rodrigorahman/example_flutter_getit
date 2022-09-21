import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:flutter_getit_example/widgets/counter_controller.dart';

class CounterWidget extends FlutterGetItWidget {
  @override
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton((i) => CounterController())];

  const CounterWidget({super.key});

  @override
  WidgetBuilder get widget => (context) => _CounterWidget(
        controller: context.get(),
      );
}

class _CounterWidget extends StatelessWidget {
  final CounterController controller;

  const _CounterWidget({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
            animation: controller,
            builder: (context, child) => Text('${controller.count}')),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: controller.increment, icon: const Icon(Icons.add)),
            IconButton(
              onPressed: controller.decrement,
              icon: const Icon(Icons.remove),
            ),
          ],
        )
      ],
    );
  }
}
