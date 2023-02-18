import 'package:blacktech_cars/config/resources/color_manager.dart';
import 'package:blacktech_cars/config/resources/strings_manager.dart';
import 'package:blacktech_cars/config/resources/values_manager.dart';
import 'package:blacktech_cars/custom_widgets/favorite/favorite_gridview_widget.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.favourites,
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(color: ColorManager.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: AppMargin.m20,
            vertical: AppMargin.m20,
          ),
          child: const FavoriteGridWidget(),
        ),
      ),
    );
  }
}
