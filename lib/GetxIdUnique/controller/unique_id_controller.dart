import 'package:get/state_manager.dart';

class UniqueIdController extends GetxController {
  var count = 0;

  void increment() {
    count++;
    update(['textCount']);
  }
}
