import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sp1_e_commerce/app/my_app_controller.dart';
import 'package:sp1_e_commerce/core/data/repository/shared_prefrence_repository.dart';
import 'package:sp1_e_commerce/core/services/connectivity_service.dart';
import 'package:sp1_e_commerce/core/translation/app_translation.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/intro_view/intro_view.dart';
import 'package:sp1_e_commerce/ui/views/landing_view/landing_view.dart';
import 'package:sp1_e_commerce/ui/views/login_view/login_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/prodcuts_view/products_view.dart';
import 'package:sp1_e_commerce/ui/views/map_view/map_view.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  MyAppController controller = Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    return StreamProvider(
      create: (BuildContext context) =>
          connectivityService.connectivityStatusController.stream,
      initialData: ConnectivityStatus.ONLINE,
      child: GetMaterialApp(
        locale: getLocal(),
        translations: AppTranslation(),
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        builder: BotToastInit(), //1. call BotToastInit
        navigatorObservers: [BotToastNavigatorObserver()],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LandingView(),
      ),
    );
  }
}

Locale getLocal() {
  String langCode = SharedPrefrenceRepository().getAppLanguge();

  if (langCode == 'ar')
    return Locale('ar', 'SA');
  else if (langCode == 'en')
    return Locale('en', 'US');
  else
    return Locale('fr', 'FR');
}



//Get.toNamed('/details');