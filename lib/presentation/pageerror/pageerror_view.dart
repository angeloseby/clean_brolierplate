import 'package:flutter/material.dart';
import 'package:sample_app/presentation/resources/strings_manager.dart';

class PageErrorView extends StatelessWidget {
  const PageErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.noRoutesFound),
      ),
    );
  }
}
