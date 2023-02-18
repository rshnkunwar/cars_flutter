import 'package:blacktech_cars/controllers/app_controller.dart';
import 'package:blacktech_cars/custom_widgets/product_card_widget.dart';
import 'package:blacktech_cars/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteGridWidget extends StatelessWidget {
  const FavoriteGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, controller, child) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: controller.favoriteLists.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9,
            crossAxisSpacing: 8,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            Product product = controller.favoriteLists[index];
            return ProductCard(product: product);
          },
        );
      },
    );
  }
}
