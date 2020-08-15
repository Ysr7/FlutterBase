import 'package:arch/app/pages/home/home_page.dart';
import 'package:arch/app/pages/login/login_page.dart';
import 'package:flutter/material.dart';

import 'app_controller.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: AppController.instance.themeSwitch,
      builder: (context, isDart, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: isDart ? Brightness.dark : Brightness.light,
          ),
          initialRoute: "/",
          routes: {
            "/": (_) => LoginPage(),
            "/home": (_) => HomePage(),
          },
        );
      },
    );
  }
}
