import 'package:flutter/material.dart';
import 'package:getxlearning/GetxApiData/Module/product_model.dart';
import 'package:getxlearning/GetxApiData/component/app_color.dart';

class ProductListScreen extends StatelessWidget {
  final List<ProductModel> productList;

  ProductListScreen(this.productList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(16, 8, 8, 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      productList[index].imageLink!,
                      width: 150,
                      height: 100,
                      fit: BoxFit.fill,
                      color: AppColor.primeryColor,
                      colorBlendMode: BlendMode.color,
                    ),
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        productList[index].name!,
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        productList[index].brand!,
                        style: TextStyle(
                            fontSize: 14.0, color: AppColor.lightPrimeryColor),
                      ),
                      Text(
                        productList[index].category!,
                        style: TextStyle(
                            fontSize: 14.0, color: AppColor.lightPrimeryColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(color: AppColor.lightPrimeryColor, height: 2.0),
          ],
        );
      },
    );
  }
}
