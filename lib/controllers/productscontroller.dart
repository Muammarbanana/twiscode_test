import 'package:get/state_manager.dart';
import 'package:twiscode_test/models/product.dart';
import 'package:twiscode_test/network_utils/api.dart';

class ProductController extends GetxController {
  var listProduct = <Product>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    getProduct();
    super.onInit();
  }

  Future<void> getProduct() async {
    final products = await Api.getProduct();
    if (products != null && products is! String) {
      listProduct.value = products as List<Product>;
    }
    isLoading(false);
  }
}
