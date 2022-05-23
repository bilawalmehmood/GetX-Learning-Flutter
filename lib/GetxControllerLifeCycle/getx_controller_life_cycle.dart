import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetxControllerLifeCycle/controller/counter_controller.dart';

class GetxControllerLifecycleScreen extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GetX Controller Lifecycle Methods')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
              init: controller,
              // initState: (data) => controller.increment(),
              // dispose: (_) => controller.cleanUpTask(),
              builder: (controller) {
                return Text(
                  'Count Value is ${controller.count}',
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
