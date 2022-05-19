import 'package:get/get.dart';
import 'package:getxlearning/SateManagement/student.dart';

class MyController extends GetxController {
  Rx<Student> student = Student(name: 'Waqar', age: 21).obs;

  void convertToUpperCaseForEntireClass() {
    student.update((std2) {
      std2?.name = std2.name.toString().toUpperCase();
    });
  }
}
