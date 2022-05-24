import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetxWorker/Controller/worker_controller.dart';
import 'package:getxlearning/widgets/home_button.dart';

class WorkerScreen extends StatelessWidget {
  WorkerScreen({Key? key}) : super(key: key);
  final WorkerController workerController = Get.put(WorkerController());

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
                TextField(
                  onChanged: (value) {
                    workerController.increment();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                GetBuilder<WorkerController>(
                  builder: (workerController) {
                    return Text(
                      'Value is ${workerController.count}',
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
                  onPressed: () => workerController.increment(),
                )
              ],
            ),
          )),
    );
  }
}
