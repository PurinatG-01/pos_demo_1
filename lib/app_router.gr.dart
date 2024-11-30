// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:pos_1/pages/dashboard/dashboard_page.dart' as _i1;
import 'package:pos_1/pages/settings/settings_page.dart' as _i2;
import 'package:pos_1/pages/stats/stats_page.dart' as _i3;

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i4.PageRouteInfo<void> {
  const DashboardRoute({List<_i4.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.DashboardPage();
    },
  );
}

/// generated route for
/// [_i2.SettingsPage]
class SettingsRoute extends _i4.PageRouteInfo<void> {
  const SettingsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.SettingsPage();
    },
  );
}

/// generated route for
/// [_i3.StatsPage]
class StatsRoute extends _i4.PageRouteInfo<void> {
  const StatsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          StatsRoute.name,
          initialChildren: children,
        );

  static const String name = 'StatsRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.StatsPage();
    },
  );
}
