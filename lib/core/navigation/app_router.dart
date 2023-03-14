import 'package:auto_route/auto_route.dart';
import 'package:meditation_app/core/navigation/routes/home_route.dart';
import 'package:meditation_app/core/navigation/routes/login_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    loginRoute,
    homeRoute,
  ],
)
class $AppRouter {}
