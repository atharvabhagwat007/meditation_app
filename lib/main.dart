import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/di/di.dart';
import 'package:meditation_app/core/navigation/app_router.gr.dart';
import 'package:meditation_app/core/networking/network_service.dart';

part './root_widget.dart';

void main() {
  _initInjector();
  _initNetworkService();
  runApp(App());
}

void _initInjector() {
  Injector.setUp();
}

void _initNetworkService() {
  (Injector.resolve<NetworkService>() as NetworkService).init();
}
