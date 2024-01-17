import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/cart_model.dart';
import 'package:sp1_e_commerce/core/data/models/product_info.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_toast.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class ProductsController extends GetxController {
  RxList<ProductModel> productList = <ProductModel>[].obs;
  RxInt count = 0.obs;

  @override
  void onInit() {
    getAllProdcut();
    super.onInit();
  }

  void getAllProdcut() {
    productRepository.getAllProduct().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        productList.clear();
        productList.addAll(r);
      });
    });
  }

  int getItemCount(ProductModel model) {
    return 0;
  }

  void changeItemQty(CartModel model, {bool? isMinus = false}) {
    // storege.changeItemQty(model,isMinus: isMinus);
    // count.value = count.value + 1;
  }
}
