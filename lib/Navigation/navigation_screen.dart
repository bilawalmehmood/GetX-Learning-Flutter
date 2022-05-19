import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/Navigation/navigation_main_screen.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  void _goToScreen() {
    Get.to(
      () => NavigationMainScreen(), // Duration for the transision animation
      duration: Duration(milliseconds: 4000),
      // to make the screen full dialog
      fullscreenDialog: true,
      // to provide the animation
      transition: Transition.zoom,
      // curve animation
      curve: Curves.bounceInOut,
      // Go to Next Screen with Pass some data
      arguments: ('Data to Main Screen'),
    );

    // * Go to Next Screen And Recieve The data Send from Next screen
    // var data= await Get.to(Scree());
    //print(data);
    // * Go to Next screen but not return to previes Screen due to replacement
    //  Get.off(Screen())
    // * Go to Next Screen but Cancel all Previes Screen /Route
    //  Get.offAll(Screen())
  }

  void _goToNamedScreen() {
    Get.toNamed('/notFound');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Screen")),
      body: Center(
          child: ElevatedButton(
        child: Text("Go to Home Screen"),
        onPressed: _goToNamedScreen,
      )),
    );
  }
}
