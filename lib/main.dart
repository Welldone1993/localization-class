import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_project/src/pages/home/common/home_page_binding.dart';

import 'localization_service.dart';
import 'src/pages/home/view/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/home-page',
          page: HomePageView.new,
          binding: HomePageBinding(),
        )
      ],
      locale: const Locale('en', 'US'),
      translationsKeys: LocalizationService.keys,
      title: 'Flutter Demo',
      theme: ThemeData.dark(useMaterial3: true),
      initialRoute: '/home-page',
    );
  }
}
