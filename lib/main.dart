import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX App',
      initialRoute: '/',
      getPages: AppRoutes.routes,
    );
  }
}