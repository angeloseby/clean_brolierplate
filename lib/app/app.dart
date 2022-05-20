import 'package:flutter/material.dart';
import 'package:sample_app/presentation/resources/routes_manager.dart';
import 'package:sample_app/presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: RoutesNames.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
