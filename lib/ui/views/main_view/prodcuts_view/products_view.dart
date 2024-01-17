import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/cart_model.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/views/cart_view/cart_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/prodcuts_view/products_controller.dart';

class PorductsView extends StatelessWidget {
  PorductsView({super.key});

  ProductsController controller = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        InkWell(
            onTap: () {
              Get.to(CartView());
            },
            child: Icon(
              Icons.shopping_bag,
              size: 75,
            )),
        Obx(() {
          print(controller.count.value);
          return ListView.builder(
            shrinkWrap: true,
            itemCount: controller.productList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [
                    Text(
                      controller.productList[index].title ?? '',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            controller.changeItemQty(CartModel(
                                productModel: controller.productList[index],
                                qty: 1,
                                total: controller.productList[index].price));
                          },
                          child: Icon(
                            Icons.add,
                            size: 40,
                          ),
                        ),
                        Text(
                          "${controller.getItemCount(controller.productList[index])}",
                          style: TextStyle(fontSize: 40),
                        ),
                        InkWell(
                          onTap: () {
                            controller.changeItemQty(
                                CartModel(
                                    productModel: controller.productList[index],
                                    qty: 1,
                                    total: controller.productList[index].price),
                                isMinus: true);
                          },
                          child: Icon(
                            Icons.remove,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: AppColors.orangeColor,
                    )
                  ],
                ),
              );
            },
          );
        }),
      ]),
    ));
  }
}
