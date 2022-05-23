import 'package:get/get.dart';
import 'package:getxlearning/ReactStateManager/Helpers/student2.dart';

class MyController extends GetxController {
  Rx<Student2> student2 = Student2(name: 'Bilawal', age: 21).obs;

  void convertToUpperCase() {
    student2.update((std2) {
      std2?.name = std2.name.toString().toUpperCase();
    });
  }

  void convertToLowerCase() {
    student2.update((std2) {
      std2?.name = std2.name.toString().toLowerCase();
    });
  }
}
