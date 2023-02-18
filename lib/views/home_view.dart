import 'package:blacktech_cars/config/resources/color_manager.dart';
import 'package:blacktech_cars/config/resources/strings_manager.dart';
import 'package:blacktech_cars/config/resources/values_manager.dart';
import 'package:blacktech_cars/controllers/app_controller.dart';
import 'package:blacktech_cars/custom_widgets/home/category_filter_widget.dart';
import 'package:blacktech_cars/custom_widgets/home/custom_appbar.dart';
import 'package:blacktech_cars/custom_widgets/home/product_gridview_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late AppController controller;

  @override
  void initState() {
    controller = context.read<AppController>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SizedBox.shrink(),
      appBar: const CustomAppBar(),
      body: _buildBody(context),
    );
  }

  Container _buildBody(BuildContext context) => Container(
        margin: const EdgeInsets.only(
          left: AppMargin.m20,
          right: AppMargin.m20,
          top: AppMargin.m10,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.categories,
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                          color: ColorManager.primary,
                        ),
                  ),
                  IconButton(
                      onPressed: () {
                        controller.refreshCategory();
                      },
                      icon: const Icon(Icons.refresh))
                ],
              ),
              const CategoryFilterWidget(),
              const ProductGridWidget()
            ],
          ),
        ),
      );
}
