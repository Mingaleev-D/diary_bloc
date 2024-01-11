import 'package:auto_route/auto_route.dart';

import '../screens/screens_import.dart';

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
        AutoRoute(page: LoginScreenRoute.page),
        AutoRoute(page: RegisterScreenRoute.page),
        AutoRoute(page: GeneralRoute.page),
        AutoRoute(page: HomeScreenRoute.page),
        AutoRoute(page: GategoryScreenRoute.page),
        AutoRoute(page: TagsScreenRoute.page),
        AutoRoute(page: HomeDetailsScreenRoute.page),
      ];
}
