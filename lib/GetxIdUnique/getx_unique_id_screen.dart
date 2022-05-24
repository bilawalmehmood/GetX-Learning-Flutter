import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getxlearning/GetxIdUnique/controller/unique_id_controller.dart';
import 'package:getxlearning/widgets/home_button.dart';

class UniqueIdScreen extends StatelessWidget {
  final UniqueIdController controller = Get.put(UniqueIdController());
  UniqueIdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: Text('Unique Id Contrloller')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GetBuilder<UniqueIdController>(
                    id: 'textCount',
                    builder: (controller) {
                      return Text(
                        'Value is ${controller.count}',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      );
                    }),
                SizedBox(
                  height: 20,
                ),
                GetBuilder<UniqueIdController>(
                  builder: (controller) {
                    return Text(
                      'Value is ${controller.count}',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                HomeButton(
                    buttonText: 'Count',
                    onPressed: () => controller.increment())
              ],
            ),
          )),
    );
  }
}
