import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:logoipsum/core/utils/constants.dart';
import 'package:logoipsum/presentation/binding/login_binding.dart';
import 'package:logoipsum/presentation/pages/login_page.dart';

void main() {
  runApp(const LogoIpsumApp());
}

class LogoIpsumApp extends StatelessWidget {
  const LogoIpsumApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      themeMode: ThemeMode.system,
      initialBinding: LoginBinding(),
      home: const LoginPage(),
    );
  }
}
