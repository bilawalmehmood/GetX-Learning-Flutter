import 'package:get/state_manager.dart';

class Student1 {
  /*
  Classes can be made observable by making individual variables Rx or by making
  the entire class observable.
  */

  // Individual Variable Rx
  RxString name = 'Bilawal'.obs;
  RxInt age = 21.obs;
}
