// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i5;

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:yeksalai/pages/dashboard.page.dart' as _i1;
import 'package:yeksalai/pages/yekSalai.page.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DashBoardRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashBoardPage(),
      );
    },
    YekSalaiRoute.name: (routeData) {
      final args = routeData.argsAs<YekSalaiRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.YekSalaiPage(
          key: args.key,
          yekIndex: args.yekIndex,
          yekColor: args.yekColor,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.DashBoardPage]
class DashBoardRoute extends _i3.PageRouteInfo<void> {
  const DashBoardRoute({List<_i3.PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.YekSalaiPage]
class YekSalaiRoute extends _i3.PageRouteInfo<YekSalaiRouteArgs> {
  YekSalaiRoute({
    _i4.Key? key,
    required int yekIndex,
    required _i5.Color yekColor,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          YekSalaiRoute.name,
          args: YekSalaiRouteArgs(
            key: key,
            yekIndex: yekIndex,
            yekColor: yekColor,
          ),
          initialChildren: children,
        );

  static const String name = 'YekSalaiRoute';

  static const _i3.PageInfo<YekSalaiRouteArgs> page =
      _i3.PageInfo<YekSalaiRouteArgs>(name);
}

class YekSalaiRouteArgs {
  const YekSalaiRouteArgs({
    this.key,
    required this.yekIndex,
    required this.yekColor,
  });

  final _i4.Key? key;

  final int yekIndex;

  final _i5.Color yekColor;

  @override
  String toString() {
    return 'YekSalaiRouteArgs{key: $key, yekIndex: $yekIndex, yekColor: $yekColor}';
  }
}
