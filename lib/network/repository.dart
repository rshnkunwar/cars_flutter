import 'package:blacktech_cars/config/constants/json_car_data.dart';
import 'package:blacktech_cars/models/categories_list_model.dart';

class Repository {
  Future<CategorisListModel> loadProducts() async {
    await Future.delayed(const Duration(seconds: 0));
    return CategorisListModel.fromJson(jsonObj);
  }
}
