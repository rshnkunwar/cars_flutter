import 'package:blacktech_cars/config/resources/strings_manager.dart';
import 'package:blacktech_cars/views/favourites_view.dart';
import 'package:blacktech_cars/views/home_view.dart';
import 'package:flutter/material.dart';

import 'route_names.dart';
import 'slide_route_animation.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.homeRoute:
        return SlideLeftRoute(
          page: const HomeView(),
          routeName: settings.name!,
        );
      case RouteNames.favouriteRoute:
        return SlideLeftRoute(
          page: const FavouriteView(),
          routeName: settings.name!,
        );

      default:
        return SlideRightRoute(
          page: const Scaffold(
            body: SafeArea(
              child: Center(child: Text(AppStrings.noRouteFound)),
            ),
          ),
          routeName: settings.name!,
        );
    }
  }
}
