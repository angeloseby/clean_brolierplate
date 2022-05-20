import 'package:flutter/material.dart';
import 'package:sample_app/presentation/resources/assets_manager.dart';
import 'package:sample_app/presentation/resources/color_manager.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: AnimatedContainer(
          width: 300,
          height: 300,
          duration: const Duration(seconds: 2),
          child: const Image(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/images/splash_logo.png",
            ),
          ),
        ),
      ),
    );
  }
}
