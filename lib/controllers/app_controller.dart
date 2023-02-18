import 'package:blacktech_cars/models/categories_list_model.dart';
import 'package:blacktech_cars/models/category_model.dart';
import 'package:blacktech_cars/models/product_model.dart';
import 'package:blacktech_cars/network/repository.dart';
import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  AppController(this._repository) {
    _loadInitialData();
  }

  late CategorisListModel _categorisListModel; // stores loaded data from repo
  List<Category> categoryLists = []; // stores all the categories lists
  List<Product> favoriteLists = []; // stores all the favorite lists
  List<Product> allProducts = []; // stores all the products available
  Category? selectedCategory; // used for filter cars by category

  void selectCategory(Category category) {
    selectedCategory = category;
    notifyListeners();
  }

  void addtoFav(Product product) {
    if (!favoriteLists.contains(product)) {
      favoriteLists.add(product);
    }
    notifyListeners();
  }

  void removeFav(Product product) {
    favoriteLists.remove(product);
    notifyListeners();
  }

  void refreshCategory() {
    selectedCategory = null;
    allProducts = _categorisListModel.products;
    notifyListeners();
  }

  void searchProduct(String searchTerm) {
    selectedCategory = null;
    if (searchTerm != "") {
      allProducts = allProducts
          .where((car) => car.name.toLowerCase().startsWith(searchTerm))
          .toList();
    } else {
      allProducts = _categorisListModel.products;
    }
    notifyListeners();
  }

  _loadInitialData() async {
    _categorisListModel = await _repository.loadProducts();
    categoryLists = _categorisListModel.categories;
    allProducts = _categorisListModel.products;
    notifyListeners();
  }

  final Repository _repository;
}
