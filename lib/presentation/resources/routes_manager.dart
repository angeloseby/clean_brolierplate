import 'package:flutter/material.dart';
import 'package:sample_app/presentation/forgotpassword/forgotpassword_view.dart';
import 'package:sample_app/presentation/home/home_view.dart';
import 'package:sample_app/presentation/login/login_view.dart';
import 'package:sample_app/presentation/onboarding/onboarding_view.dart';
import 'package:sample_app/presentation/pageerror/pageerror_view.dart';
import 'package:sample_app/presentation/register/register_view.dart';
import 'package:sample_app/presentation/splash/splash_view.dart';

/// Define the [Routes] used in this app

class RoutesNames {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onboarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotpassword';
  static const String homeRoute = '/home';
}

/// Route Generator

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesNames.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RoutesNames.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case RoutesNames.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case RoutesNames.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case RoutesNames.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case RoutesNames.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(builder: (_) => const PageErrorView());
    }
  }
}
