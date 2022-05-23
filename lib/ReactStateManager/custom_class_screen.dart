import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/ReactStateManager/Helpers/student1.dart';
import 'package:getxlearning/ReactStateManager/Helpers/student2.dart';

// ignore: must_be_immutable
class CustomClassScreen extends StatelessWidget {
  Student1 student1 = Student1();
  Rx<Student2> student2 = Student2(name: 'Bilawal', age: 21).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('With Custom Class'),
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
            Obx(
              () => Text(
                'Name is ${student1.name.value}',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () =>
                  student1.name.value = student1.name.value.toUpperCase(),
              child: Text('Upper'),
            ),
            SizedBox(height: 60.0),
            Text(
              'Entire Class observable',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
            SizedBox(height: 12.0),
            Obx(
              () => Text(
                'Name is ${student2.value.name}',
                style: TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                student2.update((std2) {
                  std2?.name = std2.name.toString().toLowerCase();
                });
              },
              child: Text('lower'),
            ),
          ],
        ),
      ),
    );
  }
}
