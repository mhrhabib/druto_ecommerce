import 'package:druto_ecommerce/pages/auth_pages/signin_page.dart';
import 'package:druto_ecommerce/pages/auth_pages/signup_page.dart';
import 'package:druto_ecommerce/pages/home/home_binding.dart';
import 'package:druto_ecommerce/pages/home/home_veiw.dart';
import 'package:druto_ecommerce/pages/main/main_binding.dart';
import 'package:druto_ecommerce/pages/main/main_view.dart';
import 'package:druto_ecommerce/pages/product_details/product_details.dart';
import 'package:druto_ecommerce/pages/starter/take_look.dart';
import 'package:get/get.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.TAKELOOK, page: () => TakeLook()),
    GetPage(
      name: Routes.HOME,
      page: () => HomeVeiw(),
      binding: HomeBinding(),
    ),
    GetPage(name: Routes.SIGNIN, page: () => SignInPage()),
    GetPage(name: Routes.SIGNUP, page: () => SignUpPage()),
    GetPage(
      name: Routes.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(name: Routes.PRODUCTDETAIL, page: () => ProductDetailsView()),
  ];
}
