import 'package:druto_ecommerce/pages/account/account_view.dart';
import 'package:druto_ecommerce/pages/cart/cart_veiw.dart';
import 'package:druto_ecommerce/pages/home/home_veiw.dart';
import 'package:druto_ecommerce/pages/main/main_controller.dart';
import 'package:druto_ecommerce/pages/message/message_view.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Icon(
            Icons.search,
            color: Colors.black87,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Icon(
                Icons.notifications,
                color: Colors.black87,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomeVeiw(),
              MessageView(),
              CartView(),
              AccountView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          currentIndex: controller.tabIndex,
          onTap: controller.changeTabIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(
              icon: Icons.home,
              label: 'Home',
            ),
            _bottomNavigationBarItem(
              icon: Icons.message,
              label: 'Message',
            ),
            _bottomNavigationBarItem(
              icon: Icons.shopping_cart,
              label: 'Cart',
            ),
            _bottomNavigationBarItem(
              icon: Icons.account_balance_wallet,
              label: 'Home',
            ),
          ],
        ),
      );
    });
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
