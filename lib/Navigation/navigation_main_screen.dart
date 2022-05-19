import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/main.dart';

class NavigationMainScreen extends StatelessWidget {
  const NavigationMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Main Screen "),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.to(
                () => HomeScreen(),
                // Duration for the transision animation
                duration: Duration(milliseconds: 4000),
                // to make the screen full dialog
                // fullscreenDialog: true,
                // to provide the animation
                transition: Transition.zoom,
                // curve animation
                curve: Curves.bounceInOut,
              );
            },
            child: Text('Next Screen'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Get.back(
                    // Send the data previes Screen where its call results
                    result: ('This from Main Screen Data'));
              },
              child: Text('Go to Back')),
          SizedBox(height: 10),
          Text(
            "${Get.arguments}",
            style: TextStyle(fontSize: 20, color: Colors.blueGrey),
          )
        ],
      )),
    );
  }
}
