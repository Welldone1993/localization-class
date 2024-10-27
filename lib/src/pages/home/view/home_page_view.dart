import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_project/generated/locales.g.dart';

import '../controller/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleKeys.localization_app_welcome.tr),
              Text(LocaleKeys.localization_app_hello.tr),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('fa', 'IR'));
                },
                child: Text(LocaleKeys.localization_app_change_language_to_persian.tr),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'Us'));
                },
                child: Text(LocaleKeys.localization_app_change_language_to_english.tr),
              ),
            ],
          ),
        ),
      );
}
