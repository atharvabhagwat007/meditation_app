// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:auto_route/empty_router_widgets.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i10;
import 'package:flutter/material.dart' as _i9;

import '../../presentation/authentication/screen/choose_topic_screen.dart'
    as _i5;
import '../../presentation/authentication/screen/login_screen.dart' as _i3;
import '../../presentation/authentication/screen/pre_login_screen.dart' as _i2;
import '../../presentation/authentication/screen/welcome_screen.dart' as _i4;
import '../../presentation/home/screen/detail_screen.dart' as _i7;
import '../../presentation/home/screen/home_screen.dart' as _i6;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AuthenticationRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    PreLoginRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PreLoginScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.LoginScreen(
          key: args.key,
          isLoginScreen: args.isLoginScreen,
        ),
      );
    },
    WelcomeRoute.name: (routeData) {
      final args = routeData.argsAs<WelcomeRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.WelcomeScreen(
          key: args.key,
          name: args.name,
        ),
      );
    },
    ChooseTopicRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ChooseTopicScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.HomeScreen(),
      );
    },
    DetailRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.DetailScreen(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'authenticationScreenPath',
          fullMatch: true,
        ),
        _i8.RouteConfig(
          AuthenticationRouter.name,
          path: 'authenticationScreenPath',
          children: [
            _i8.RouteConfig(
              PreLoginRoute.name,
              path: '',
              parent: AuthenticationRouter.name,
            ),
            _i8.RouteConfig(
              LoginRoute.name,
              path: 'login',
              parent: AuthenticationRouter.name,
            ),
            _i8.RouteConfig(
              WelcomeRoute.name,
              path: 'welcome',
              parent: AuthenticationRouter.name,
            ),
            _i8.RouteConfig(
              ChooseTopicRoute.name,
              path: 'choosetopicPath',
              parent: AuthenticationRouter.name,
            ),
          ],
        ),
        _i8.RouteConfig(
          HomeRouter.name,
          path: 'homePath',
          children: [
            _i8.RouteConfig(
              HomeRoute.name,
              path: '',
              parent: HomeRouter.name,
            ),
            _i8.RouteConfig(
              DetailRoute.name,
              path: 'detail',
              parent: HomeRouter.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.EmptyRouterPage]
class AuthenticationRouter extends _i8.PageRouteInfo<void> {
  const AuthenticationRouter({List<_i8.PageRouteInfo>? children})
      : super(
          AuthenticationRouter.name,
          path: 'authenticationScreenPath',
          initialChildren: children,
        );

  static const String name = 'AuthenticationRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class HomeRouter extends _i8.PageRouteInfo<void> {
  const HomeRouter({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'homePath',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.PreLoginScreen]
class PreLoginRoute extends _i8.PageRouteInfo<void> {
  const PreLoginRoute()
      : super(
          PreLoginRoute.name,
          path: '',
        );

  static const String name = 'PreLoginRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i10.Key? key,
    bool isLoginScreen = false,
  }) : super(
          LoginRoute.name,
          path: 'login',
          args: LoginRouteArgs(
            key: key,
            isLoginScreen: isLoginScreen,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.isLoginScreen = false,
  });

  final _i10.Key? key;

  final bool isLoginScreen;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, isLoginScreen: $isLoginScreen}';
  }
}

/// generated route for
/// [_i4.WelcomeScreen]
class WelcomeRoute extends _i8.PageRouteInfo<WelcomeRouteArgs> {
  WelcomeRoute({
    _i10.Key? key,
    required String name,
  }) : super(
          WelcomeRoute.name,
          path: 'welcome',
          args: WelcomeRouteArgs(
            key: key,
            name: name,
          ),
        );

  static const String name = 'WelcomeRoute';
}

class WelcomeRouteArgs {
  const WelcomeRouteArgs({
    this.key,
    required this.name,
  });

  final _i10.Key? key;

  final String name;

  @override
  String toString() {
    return 'WelcomeRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [_i5.ChooseTopicScreen]
class ChooseTopicRoute extends _i8.PageRouteInfo<void> {
  const ChooseTopicRoute()
      : super(
          ChooseTopicRoute.name,
          path: 'choosetopicPath',
        );

  static const String name = 'ChooseTopicRoute';
}

/// generated route for
/// [_i6.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.DetailScreen]
class DetailRoute extends _i8.PageRouteInfo<void> {
  const DetailRoute()
      : super(
          DetailRoute.name,
          path: 'detail',
        );

  static const String name = 'DetailRoute';
}
