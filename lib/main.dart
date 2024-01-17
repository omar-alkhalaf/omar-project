import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp1_e_commerce/app/my_app.dart';
import 'package:sp1_e_commerce/core/data/repository/post_repository.dart';
import 'package:sp1_e_commerce/core/data/repository/prodcut_repository.dart';
import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/core/services/connectivity_service.dart';
import 'package:sp1_e_commerce/core/services/location_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put(ConnectivityService());
//  Get.put(CartService());
  Get.put(Connectivity());
  Get.put(LocationService());

  Get.lazyPut(() => SharedPrefrenceRepository());
  Get.lazyPut(() => PostRepository());
  Get.lazyPut(() => ProductRepository());

  await Get.putAsync(() async {
    return await SharedPreferences.getInstance();
  });

  runApp(MyApp());
}
