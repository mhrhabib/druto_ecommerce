import 'package:druto_ecommerce/models/exclusive_products.dart';

class ExclusiveProductService {
  List<ExclusiveProducts> getExclusiveProducts() {
    return <ExclusiveProducts>[
      ExclusiveProducts(
          name: "pant1",
          price: "123.40",
          productImageUrl: "assets/images/pant1.jpg"),
      ExclusiveProducts(
          name: "pant2",
          price: "1500.00",
          productImageUrl: "assets/images/pant2.jpg"),
      ExclusiveProducts(
          name: "pant3",
          price: "1000.40",
          productImageUrl: "assets/images/jeans3.jpg"),
    ];
  }
}
