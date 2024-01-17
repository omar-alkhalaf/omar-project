import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/cart_model.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/views/cart_view/cart_controller.dart';

class CartView extends StatelessWidget {
  CartView({super.key});

  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Text(
            'Cart View',
            style: TextStyle(fontSize: 50),
          ),
          Obx(() {
            print(controller.count.value);
            return ListView.builder(
              shrinkWrap: true,
              itemCount: controller.cartList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        controller.cartList[index].productModel?.title ?? '',
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              CartModel model = controller.cartList[index];
                              model.qty = model.qty! + 1;
                              controller.updateItem(model);
                            },
                            child: Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                          Text(
                            "${controller.getItemCount(controller.cartList[index].productModel!)}",
                            style: TextStyle(fontSize: 40),
                          ),
                          InkWell(
                            onTap: () {
                              CartModel model = controller.cartList[index];
                              if (model.qty! > 1) model.qty = model.qty! - 1;
                              controller.updateItem(model);
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
        ],
      ),
    ));
  }
}
