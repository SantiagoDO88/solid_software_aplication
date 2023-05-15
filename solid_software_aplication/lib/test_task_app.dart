import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:solid_software_aplication/config/initial_bindings.dart';
import 'package:solid_software_aplication/config/routes/app_pages.dart';
import 'package:solid_software_aplication/presentation/common/style/app_strings.dart';
import 'package:solid_software_aplication/presentation/common/theme_data.dart';
import 'package:solid_software_aplication/presentation/pages/navigation/navigation_page.dart';

class TestTaskApp extends StatelessWidget {
  const TestTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: themeData(),
      home: const NavigationPage(),
      initialBinding: InitialBindings(),
      getPages: AppPages.pages,
    );
  }
}
