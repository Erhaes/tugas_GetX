import 'package:get/get.dart';
import 'package:getx/views/data_view.dart';
import 'package:getx/views/home_view.dart';
import 'package:getx/views/login_view.dart';
import 'package:getx/views/profile_view.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => LoginView()),
    GetPage(name: '/home', page: () => HomeView()),
    GetPage(name: '/profile', page: () => ProfileView()),
    GetPage(name: '/data', page: () => DataView()),
  ];
}