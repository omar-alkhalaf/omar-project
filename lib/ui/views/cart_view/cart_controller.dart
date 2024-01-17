import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/cart_model.dart';
import 'package:sp1_e_commerce/core/data/models/product_info.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/prodcuts_view/products_controller.dart';

class CartController extends GetxController {
  RxList<CartModel> cartList = <CartModel>[].obs;

  RxInt count = 0.obs;

  @override
  void onInit() {
    cartList.addAll(storege.getCartList());
    super.onInit();
  }

  int getItemCount(ProductModel model) {
    // return storege.getItemQty(model);
    return 0;
  }

  void updateItem(
    CartModel model,
  ) {
    // storege.updateCartItem(model);
    // count.value = count.value + 1;
    // ProductsController productsController = Get.find<ProductsController>();
    // productsController.count.value = count.value + 1;
  }
}
