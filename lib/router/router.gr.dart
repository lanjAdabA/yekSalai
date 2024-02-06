// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i7;

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:yeksalai/pages/CustomNavigationHomePage.dart' as _i1;
import 'package:yeksalai/pages/dashboard.page.dart' as _i2;
import 'package:yeksalai/pages/NewYekSalai.page.dart' as _i3;
import 'package:yeksalai/pages/yekSalai.page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CustomNavigationHomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CustomNavigationHomePage(),
      );
    },
    DashBoardRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DashBoardPage(),
      );
    },
    NewYekSalaiRoute.name: (routeData) {
      final args = routeData.argsAs<NewYekSalaiRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.NewYekSalaiPage(
          key: args.key,
          yekPageIndex: args.yekPageIndex,
          yekColor: args.yekColor,
        ),
      );
    },
    YekSalaiRoute.name: (routeData) {
      final args = routeData.argsAs<YekSalaiRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.YekSalaiPage(
          key: args.key,
          yekPageIndex: args.yekPageIndex,
          yekColor: args.yekColor,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomNavigationHomePage]
class CustomNavigationHomeRoute extends _i5.PageRouteInfo<void> {
  const CustomNavigationHomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CustomNavigationHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomNavigationHomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashBoardPage]
class DashBoardRoute extends _i5.PageRouteInfo<void> {
  const DashBoardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NewYekSalaiPage]
class NewYekSalaiRoute extends _i5.PageRouteInfo<NewYekSalaiRouteArgs> {
  NewYekSalaiRoute({
    _i6.Key? key,
    required int yekPageIndex,
    required _i7.Color yekColor,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          NewYekSalaiRoute.name,
          args: NewYekSalaiRouteArgs(
            key: key,
            yekPageIndex: yekPageIndex,
            yekColor: yekColor,
          ),
          initialChildren: children,
        );

  static const String name = 'NewYekSalaiRoute';

  static const _i5.PageInfo<NewYekSalaiRouteArgs> page =
      _i5.PageInfo<NewYekSalaiRouteArgs>(name);
}

class NewYekSalaiRouteArgs {
  const NewYekSalaiRouteArgs({
    this.key,
    required this.yekPageIndex,
    required this.yekColor,
  });

  final _i6.Key? key;

  final int yekPageIndex;

  final _i7.Color yekColor;

  @override
  String toString() {
    return 'NewYekSalaiRouteArgs{key: $key, yekPageIndex: $yekPageIndex, yekColor: $yekColor}';
  }
}

/// generated route for
/// [_i4.YekSalaiPage]
class YekSalaiRoute extends _i5.PageRouteInfo<YekSalaiRouteArgs> {
  YekSalaiRoute({
    _i6.Key? key,
    required int yekPageIndex,
    required _i7.Color yekColor,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          YekSalaiRoute.name,
          args: YekSalaiRouteArgs(
            key: key,
            yekPageIndex: yekPageIndex,
            yekColor: yekColor,
          ),
          initialChildren: children,
        );

  static const String name = 'YekSalaiRoute';

  static const _i5.PageInfo<YekSalaiRouteArgs> page =
      _i5.PageInfo<YekSalaiRouteArgs>(name);
}

class YekSalaiRouteArgs {
  const YekSalaiRouteArgs({
    this.key,
    required this.yekPageIndex,
    required this.yekColor,
  });

  final _i6.Key? key;

  final int yekPageIndex;

  final _i7.Color yekColor;

  @override
  String toString() {
    return 'YekSalaiRouteArgs{key: $key, yekPageIndex: $yekPageIndex, yekColor: $yekColor}';
  }
}
