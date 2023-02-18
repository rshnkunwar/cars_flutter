import 'package:blacktech_cars/config/resources/color_manager.dart';
import 'package:blacktech_cars/controllers/app_controller.dart';
import 'package:blacktech_cars/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryFilterWidget extends StatelessWidget {
  const CategoryFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Consumer<AppController>(builder: (context, controller, child) {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: controller.categoryLists.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Category category = controller.categoryLists[index];
              return InkWell(
                onTap: () =>
                    context.read<AppController>().selectCategory(category),
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Chip(
                    backgroundColor: ColorManager.primary,
                    label: Text(
                      category.title,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: ColorManager.white,
                          ),
                    ),
                  ),
                ),
              );
            });
      }),
    );
  }
}
