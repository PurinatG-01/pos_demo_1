import 'package:auto_route/auto_route.dart';
import 'package:pos_1/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: DashboardRoute.page,
          initial: true,
          path: AppPath.dashboard.path,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: StatsRoute.page,
          path: AppPath.stats.path,
          transitionsBuilder: TransitionsBuilders.noTransition,
        ),
        CustomRoute(
          page: SettingsRoute.page,
          path: AppPath.settings.path,
          transitionsBuilder: TransitionsBuilders.noTransition,
        )
      ];
}

enum AppPath {
  dashboard(path: "/"),
  stats(path: "/stats"),
  settings(path: "/settings");

  final String path;

  const AppPath({required this.path});
}
