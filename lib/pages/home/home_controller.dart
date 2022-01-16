import 'package:druto_ecommerce/models/exclusive_products.dart';
import 'package:druto_ecommerce/models/flashdeals_model.dart';
import 'package:druto_ecommerce/services/exclusive_product_service.dart';
import 'package:druto_ecommerce/services/flashdeals_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<FlashDealsModel> suits = [];
  List<ExclusiveProducts> products = [];

  @override
  void onInit() {
    super.onInit();
    suits = FlashDealService().getFlashdeals();
    products = ExclusiveProductService().getExclusiveProducts();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
