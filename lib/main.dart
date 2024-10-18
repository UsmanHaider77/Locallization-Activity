import 'package:class_task/home_page.dart';
import 'package:class_task/home_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      translations: HomeTranslations(),
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}