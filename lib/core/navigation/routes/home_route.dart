import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:meditation_app/core/navigation/navigation_constants.dart';
import 'package:meditation_app/presentation/home/screen/detail_screen.dart';
import 'package:meditation_app/presentation/home/screen/home_screen.dart';

const homeRoute = AutoRoute(
  page: EmptyRouterPage,
  name: NavigationConstants.homeRouter,
  path: 'homePath',
  children: [
    AutoRoute(
      path: '',
      page: HomeScreen,
    ),
    AutoRoute(
      path: 'detail',
      page: DetailScreen,
    ),
  ],
);
