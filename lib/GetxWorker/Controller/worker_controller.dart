import 'package:get/get.dart';

class WorkerController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
    // *called evry time when the value of variable changed
    // ever(count, (_) => (count));

    super.onInit();
  }
}
