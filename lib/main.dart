import 'package:flutter/material.dart';
import 'package:whatsapp_ui/controller/home_controller.dart';
import 'package:whatsapp_ui/data/colors_data.dart';

import 'controller/App_home_controller .dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: appMaterialColor,
      ),
      home: AppHomeController(),
    );
  }
}
