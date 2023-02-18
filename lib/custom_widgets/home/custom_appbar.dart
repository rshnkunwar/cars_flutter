import 'package:blacktech_cars/config/resources/color_manager.dart';
import 'package:blacktech_cars/config/resources/strings_manager.dart';
import 'package:blacktech_cars/config/routes/route_names.dart';
import 'package:blacktech_cars/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 250,
          height: 40,
          child: TextField(
            onChanged: (term) {
              context.read<AppController>().searchProduct(term);
            },
            decoration: InputDecoration(
              hintText: AppStrings.search,
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, RouteNames.favouriteRoute);
            },
            icon: Icon(
              Icons.favorite,
              color: ColorManager.red,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(
            Icons.filter_alt,
            color: ColorManager.white,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
