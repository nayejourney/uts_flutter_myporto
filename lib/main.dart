// ==========================
// 📄 main.dart
// ==========================

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'pages/dashboard_page.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MyPortoApp()));
}

class MyPortoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,

      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Poppins',

        scaffoldBackgroundColor: Color(0xFFFFF8EE),

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          foregroundColor: Colors.black,
        ),
      ),

      home: DashboardPage(),
    );
  }
}
