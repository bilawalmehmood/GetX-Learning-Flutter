import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/BottomSheet/bottom_sheet.dart';
import 'package:getxlearning/DialogBox/dialogbox_screen.dart';
import 'package:getxlearning/GetxApiData/screens/fetch_data_api_screen.dart';
import 'package:getxlearning/GetxApiData/screens/product_list_screen.dart';
import 'package:getxlearning/GetxController/getx_controller_screen.dart';
import 'package:getxlearning/GetxControllerLifeCycle/getx_controller_life_cycle.dart';
import 'package:getxlearning/GetxIdUnique/getx_unique_id_screen.dart';
import 'package:getxlearning/GetxWorker/getx_worker_screen.dart';
import 'package:getxlearning/Navigation/navigation_main_screen.dart';

import 'package:getxlearning/ReactStateManager/react_state_manager_screen.dart';

import 'package:getxlearning/SnackBar/snackbar_screen.dart';
import 'package:getxlearning/widgets/home_button.dart';

Future<void> main() async {
  runApp(MyApp());
}

// Smart Management
// GetX provides Smart Management that lets us configure how dependencies
// behave in terms of memory management.
// GetMaterialApp(
//   smartManagement: SmartManagement.full  // or .keepFactory  // or .onlyBuilder
// )
// By deafult is SmartManagement.full
//
// full
// =====
// Everything gets disposed as soon as the route is removed from navigation
// stack, unless declared permanent
//
// keepFactory
// ===========
// Just like SmartManagement.full, it will remove its dependencies when its not
// being used anymore. However, it will keep their factory, which means it will
// recreate the dependency if you need that instance again.
//
// onlyBuilder
// ===========
// With this option, only controllers started in init: or loaded into a Binding
// with Get.lazyPut() will be disposed
//
// If you use Get.put() or Get.putAsync() or any other approach, SmartManagement
// will not have permissions to exclude this dependency

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      smartManagement: SmartManagement.onlyBuilder,
      locale: Locale('en',
          'US'), // default locale, to get device locale use Get.deviceLocale
      fallbackLocale:
          Locale('en', 'US'), // fallback locale if wrong locale found
      // if binding applied at route level
      // getPages: [
      //   GetPage(
      //     name: '/binding_example_screen',
      //     page: () => BindingExampleScreen(),
      //     binding: BindingExampleScreenControllerBinding(),
      //   ),
      // ],
      // BindingsBuilder (if we don't want to use separate binding class)

      debugShowCheckedModeBanner: false,
      title: 'GetX Learning',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Learning'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            HomeButton(
              buttonText: 'SnackBar',
              onPressed: () => Get.to(() => SnackbarScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Dialog Box',
              onPressed: () => Get.to(() => DialogBoxScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'React State Management ',
              onPressed: () => Get.to(() => ReactiveStateManagerScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Navigation Screen',
              onPressed: () => Get.to(() => NavigationMainScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'My Controller',
              onPressed: () => Get.to(() => GetxControllerScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Bottom Sheet',
              onPressed: () => Get.to(() => BottomSheetScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Getx LifeCycle Controller',
              onPressed: () => Get.to(() => GetxControllerLifecycleScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Getx Unique Id',
              onPressed: () => Get.to(() => UniqueIdScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Getx Worker',
              onPressed: () => Get.to(() => WorkerScreen()),
            ),
            SizedBox(height: 8.0),
            HomeButton(
              buttonText: 'Getx Api Data Fetch',
              onPressed: () => Get.to(() => FetchApiDataScreen()),
            ),
            SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
