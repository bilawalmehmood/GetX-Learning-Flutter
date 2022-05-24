import 'package:get/state_manager.dart';
import 'package:getxlearning/GetxApiData/Module/product_model.dart';
import 'package:getxlearning/GetxApiData/Services/api_services.dart';

class ProductController extends GetxController {
  RxBool isLoading = true.obs;
  RxList<ProductModel> productList = RxList<ProductModel>();

  Future<void> fetchProducts() async {
    try {
      isLoading(true);
      List<ProductModel> products = await ApiService.fetchProducts();
      if (products.length > 0) productList.assignAll(products);
    } finally {
      isLoading(false);
    }
  }
}
