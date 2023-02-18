import 'package:blacktech_cars/config/resources/values_manager.dart';
import 'package:blacktech_cars/controllers/app_controller.dart';
import 'package:blacktech_cars/custom_widgets/product_card_widget.dart';
import 'package:blacktech_cars/models/category_model.dart';
import 'package:blacktech_cars/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductGridWidget extends StatelessWidget {
  const ProductGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, controller, child) {
        Category? selectedCategory = controller.selectedCategory;
        return Container(
          margin: const EdgeInsets.only(top: AppMargin.m10),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: selectedCategory == null
                ? controller.allProducts.length
                : selectedCategory.products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.9,
              crossAxisSpacing: 8,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              Product product = selectedCategory == null
                  ? controller.allProducts[index]
                  : selectedCategory.products[index];
              return ProductCard(product: product);
            },
          ),
        );
      },
    );
  }
}
