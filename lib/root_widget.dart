part of './main.dart';

class App extends StatelessWidget {
  App({super.key});

  final AppRouter _appRouter = AppRouter();
  MaterialColor primarySwatchColor = const MaterialColor(
    0xFF8E97FD,
    <int, Color>{
      50: ColorConstants.c8E97FD,
      100: ColorConstants.c8E97FD,
      200: ColorConstants.c8E97FD,
      300: ColorConstants.c8E97FD,
      400: ColorConstants.c8E97FD,
      500: ColorConstants.c8E97FD,
      600: ColorConstants.c8E97FD,
      700: ColorConstants.c8E97FD,
      800: ColorConstants.c8E97FD,
      900: ColorConstants.c8E97FD,
    },
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      builder: (context, child) => MaterialApp.router(
        theme: ThemeData(primarySwatch: primarySwatchColor),
        key: UniqueKey(),
        title: 'Meditation App',
        debugShowCheckedModeBanner: false,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
