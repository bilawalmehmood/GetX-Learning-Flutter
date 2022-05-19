import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetxController/Controllers/my_controller.dart';

class GetxControllerScreen extends StatelessWidget {
  final MyController? myController = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Controller'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 24.0),
            Text(
              'Individual variables observable',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(height: 12.0),
            Text(
              'Entire Class observable',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(height: 12.0),
            Obx(
              () => Text(
                'Name is ${myController!.student.value.name}',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () => myController!.convertToUpperCaseForEntireClass(),
              child: Text('Upper'),
            ),
          ],
        ),
      ),
    );
  }
}
