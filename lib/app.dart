import 'package:blacktech_cars/config/resources/theme_manager.dart';
import 'package:blacktech_cars/config/routes/route_generator.dart';
import 'package:blacktech_cars/config/routes/route_names.dart';
import 'package:blacktech_cars/controllers/app_controller.dart';
import 'package:blacktech_cars/network/repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final _navigatorKey = GlobalKey<NavigatorState>();
NavigatorState get navigator => _navigatorKey.currentState!;

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppController(Repository()),
      child: MaterialApp(
        navigatorKey: _navigatorKey,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: getApplicationTheme(),
        initialRoute: RouteNames.homeRoute,
      ),
    );
  }
}
