import 'package:druto_ecommerce/models/flashdeals_model.dart';

class FlashDealService {
  List<FlashDealsModel> getFlashdeals() {
    return <FlashDealsModel>[
      FlashDealsModel(imageUrl: 'assets/images/shoe3.jpg'),
      FlashDealsModel(imageUrl: 'assets/images/shoe2.jpg'),
      FlashDealsModel(imageUrl: 'assets/images/shoe4.jpg'),
    ];
  }
}
