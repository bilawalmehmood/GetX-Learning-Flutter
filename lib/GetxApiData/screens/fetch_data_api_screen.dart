import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxlearning/GetxApiData/Controller/product_controller.dart';
import 'package:getxlearning/GetxApiData/component/app_string.dart';
import 'package:getxlearning/GetxApiData/screens/product_list_screen.dart';

class FetchApiDataScreen extends StatefulWidget {
  @override
  _FetchApiDataScreenState createState() => _FetchApiDataScreenState();
}

class _FetchApiDataScreenState extends State<FetchApiDataScreen> {
  final ProductController _productController = Get.put(ProductController());

  @override
  void initState() {
    super.initState();
    _productController.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppString.fetchApiData)),
      body: Obx(() {
        if (_productController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ProductListScreen(_productController.productList);
      }),
    );
  }
}
