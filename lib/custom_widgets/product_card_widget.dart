import 'package:blacktech_cars/config/resources/color_manager.dart';
import 'package:blacktech_cars/config/resources/fonts_manager.dart';
import 'package:blacktech_cars/controllers/app_controller.dart';
import 'package:blacktech_cars/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: ColorManager.cardBgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        product.name.toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                fontSize: FontSize.s12,
                                color: ColorManager.cardTitleTxtColor),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        product.dateAdded,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontSize: FontSize.s12,
                            color: ColorManager.cardTitleTxtColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  product.name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: ColorManager.black),
                ),
                const SizedBox(height: 4),
                Divider(
                  color: Colors.grey[600],
                  thickness: 1,
                ),
                Text(
                  "Details: ${product.detail}",
                  maxLines: 3,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                      onPressed: () {
                        if (context
                            .read<AppController>()
                            .favoriteLists
                            .contains(product)) {
                          context.read<AppController>().removeFav(product);
                        } else {
                          context.read<AppController>().addtoFav(product);
                        }
                      },
                      icon: Icon(
                        context
                                .read<AppController>()
                                .favoriteLists
                                .contains(product)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: ColorManager.red,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
