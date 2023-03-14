import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:meditation_app/core/navigation/navigation_constants.dart';
import 'package:meditation_app/presentation/authentication/screen/choose_topic_screen.dart';
import 'package:meditation_app/presentation/authentication/screen/login_screen.dart';
import 'package:meditation_app/presentation/authentication/screen/pre_login_screen.dart';
import 'package:meditation_app/presentation/authentication/screen/welcome_screen.dart';

const AutoRoute loginRoute = AutoRoute(
  initial: true,
  path: NavigationConstants.authenticationScreenPath,
  name: NavigationConstants.authenticationRouter,
  page: EmptyRouterPage,
  children: [
    AutoRoute(
      path: '',
      page: PreLoginScreen,
    ),
    AutoRoute(
      path: 'login',
      page: LoginScreen,
    ),
    AutoRoute(
      path: 'welcome',
      page: WelcomeScreen,
    ),
    AutoRoute(
      path: 'choosetopicPath',
      page: ChooseTopicScreen,
    ),
  ],
);
