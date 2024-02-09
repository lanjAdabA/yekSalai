// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i9;

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:yeksalai/pages/contactus.page.dart' as _i1;
import 'package:yeksalai/pages/CustomNavigationHomePage.dart' as _i2;
import 'package:yeksalai/pages/dashboard.page.dart' as _i3;
import 'package:yeksalai/pages/NewYekSalai.page.dart' as _i4;
import 'package:yeksalai/pages/searchAndCompare.page.dart' as _i5;
import 'package:yeksalai/pages/yekSalai.page.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    ContactRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ContactPage(),
      );
    },
    CustomNavigationHomeRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CustomNavigationHomePage(),
      );
    },
    DashBoardRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashBoardPage(),
      );
    },
    NewYekSalaiRoute.name: (routeData) {
      final args = routeData.argsAs<NewYekSalaiRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.NewYekSalaiPage(
          key: args.key,
          yekPageIndex: args.yekPageIndex,
          yekColor: args.yekColor,
        ),
      );
    },
    SearchAndCompareRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SearchAndComparePage(),
      );
    },
    YekSalaiRoute.name: (routeData) {
      final args = routeData.argsAs<YekSalaiRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.YekSalaiPage(
          key: args.key,
          yekPageIndex: args.yekPageIndex,
          yekColor: args.yekColor,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.ContactPage]
class ContactRoute extends _i7.PageRouteInfo<void> {
  const ContactRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ContactRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CustomNavigationHomePage]
class CustomNavigationHomeRoute extends _i7.PageRouteInfo<void> {
  const CustomNavigationHomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CustomNavigationHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomNavigationHomeRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashBoardPage]
class DashBoardRoute extends _i7.PageRouteInfo<void> {
  const DashBoardRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NewYekSalaiPage]
class NewYekSalaiRoute extends _i7.PageRouteInfo<NewYekSalaiRouteArgs> {
  NewYekSalaiRoute({
    _i8.Key? key,
    required int yekPageIndex,
    required _i9.Color yekColor,
    List<_i7.PageRouteInfo>? children,
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

  static const _i7.PageInfo<NewYekSalaiRouteArgs> page =
      _i7.PageInfo<NewYekSalaiRouteArgs>(name);
}

class NewYekSalaiRouteArgs {
  const NewYekSalaiRouteArgs({
    this.key,
    required this.yekPageIndex,
    required this.yekColor,
  });

  final _i8.Key? key;

  final int yekPageIndex;

  final _i9.Color yekColor;

  @override
  String toString() {
    return 'NewYekSalaiRouteArgs{key: $key, yekPageIndex: $yekPageIndex, yekColor: $yekColor}';
  }
}

/// generated route for
/// [_i5.SearchAndComparePage]
class SearchAndCompareRoute extends _i7.PageRouteInfo<void> {
  const SearchAndCompareRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SearchAndCompareRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchAndCompareRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.YekSalaiPage]
class YekSalaiRoute extends _i7.PageRouteInfo<YekSalaiRouteArgs> {
  YekSalaiRoute({
    _i8.Key? key,
    required int yekPageIndex,
    required _i9.Color yekColor,
    List<_i7.PageRouteInfo>? children,
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

  static const _i7.PageInfo<YekSalaiRouteArgs> page =
      _i7.PageInfo<YekSalaiRouteArgs>(name);
}

class YekSalaiRouteArgs {
  const YekSalaiRouteArgs({
    this.key,
    required this.yekPageIndex,
    required this.yekColor,
  });

  final _i8.Key? key;

  final int yekPageIndex;

  final _i9.Color yekColor;

  @override
  String toString() {
    return 'YekSalaiRouteArgs{key: $key, yekPageIndex: $yekPageIndex, yekColor: $yekColor}';
  }
}
