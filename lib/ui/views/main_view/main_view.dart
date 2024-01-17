import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/views/main_view/prodcuts_view/products_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/home_view/home_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widgets/bottom_navigation_bar.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_view_widgets/side_menu.dart';
import 'package:sp1_e_commerce/ui/views/main_view/notifications_view/notifications_view.dart';
import 'package:sp1_e_commerce/ui/views/main_view/settings_view/settings_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PageController controller = PageController();

  BottomNavigationEnum selectedView = BottomNavigationEnum.HOME;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      drawer: SideMenu(
        afterClick: () {
          selectedView = BottomNavigationEnum.FAVORITE;
          setState(() {});
          controller.jumpToPage(
            1,
          );
        },
      ),
      bottomNavigationBar: CustomNavigationBar(
        selected: selectedView,
        mainTap: (selecteEnum, index) {
          setState(() {
            selectedView = selecteEnum;
          });
          // controller.animateToPage(index,
          //     duration: Duration(milliseconds: 50), curve: Curves.easeOutSine);
          controller.jumpToPage(
            index,
          );
        },
      ),
      body: Stack(
        children: [
          PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                HomeView(openDrawer: () {
                  scaffoldKey.currentState!.openDrawer();
                }),
                PorductsView(),
                NotificationsView(
                  openDrawer: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                ),
                SettingsView(),
              ]),
        ],
      ),
    ));
  }
}





// onPageChanged: (index) {
          //   if (index == 0)
          //     setState(() {
          //       selectedView = BottomNavigationEnum.HOME;
          //     });
          //   else if (index == 1)
          //     setState(() {
          //       selectedView = BottomNavigationEnum.FAVORITE;
          //     });
          //   else if (index == 2)
          //     setState(() {
          //       selectedView = BottomNavigationEnum.NOTIFICATIONS;
          //     });
          //   else if (index == 3)
          //     setState(() {
          //       selectedView = BottomNavigationEnum.SETTINGS;
          //     });
          // },