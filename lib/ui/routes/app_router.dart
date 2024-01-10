import 'package:auto_route/auto_route.dart';

import '../screens/screens.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashScreenRoute.page, path: '/', initial: true),
        AutoRoute(page: OnboardScreenRoute.page),
        AutoRoute(page: AuthScreenRoute.page),
      ];
}
