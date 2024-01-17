import 'dart:math';

import 'package:get/state_manager.dart';
import 'package:sp1_e_commerce/core/data/models/cart_model.dart';
import 'package:sp1_e_commerce/core/data/models/product_info.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class CartService {
  RxList<CartModel> cartList = storege.getCartList().obs;

  RxDouble subTotal = 0.0.obs;
  RxDouble taxAmount = 0.0.obs;
  RxDouble delivertyFees = 0.0.obs;
  RxDouble total = 0.0.obs;

  RxInt cartCount = 0.obs;

  double taxPercent = 0.18;
  double deliveryPercent = 0.1;

  CartService() {
    getCartCount();
    calcCartTotal();
  }

  void addToCart({required ProductModel model, required int qty}) {
    if (getCartModel(model) != null) {
      int index = cartList
          .indexWhere((element) => element.productModel!.id == model.id!);

      cartList[index].qty = cartList[index].qty! + qty;
      cartList[index].total = cartList[index].total! + qty * model.price!;
    } else {
      cartList.add(CartModel(
        productModel: model,
        qty: qty,
        total: qty * model.price!,
      ));
    }

    storege.setCartList(cartList);
    calcCartTotal();
    cartCount.value += qty;
  }

  void changeQty({required CartModel model, required bool increase}) {
    CartModel? result = getCartModel(model.productModel!);

    int index = cartList.indexWhere(
        (element) => element.productModel!.id == model.productModel!.id);

    if (result != null) {
      if (increase) {
        result.qty = result.qty! + 1;
        result.total = result.total! + model.productModel!.price!;
        cartCount.value += 1;
      } else {
        if (result.qty == 1) return;
        result.qty = result.qty! - 1;
        result.total = result.total! - model.productModel!.price!;
        cartCount.value -= 1;
      }
      cartList.removeAt(index);
      cartList.insert(index, result);
    } else {
      cartList.add(model);
      cartCount.value += 1;
    }

    storege.setCartList(cartList);
    calcCartTotal();
  }

  void removeFromCartList(CartModel model) {
    cartList.remove(model);

    storege.setCartList(cartList);
    calcCartTotal();
    cartCount.value -= model.qty ?? 0;
  }

  void clearCart() {
    cartList.clear();
    cartCount.value = 0;
    calcCartTotal();
    storege.setCartList(cartList);
  }

  CartModel? getCartModel(ProductModel model) {
    try {
      return cartList
          .firstWhere((element) => element.productModel!.id == model.id!);
    } catch (e) {
      return null;
    }
  }

  int getCartCount() {
    cartCount.value =
        cartList.fold(0, (previousValue, element) => element.qty ?? 0);

    return cartCount.value;
  }

  void calcCartTotal() {
    subTotal.value =
        cartList.fold(0, (previousValue, element) => element.total ?? 0);
    taxAmount.value = subTotal.value * taxPercent;
    delivertyFees.value = subTotal.value * deliveryPercent;
    total.value = subTotal.value + taxAmount.value + delivertyFees.value;
  }
}
