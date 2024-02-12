// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i10;

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:yeksalai/pages/contactus.page.dart' as _i1;
import 'package:yeksalai/pages/CustomNavigationHomePage.dart' as _i2;
import 'package:yeksalai/pages/dashboard.page.dart' as _i3;
import 'package:yeksalai/pages/DetailedYekDescription.page.dart' as _i4;
import 'package:yeksalai/pages/NewYekSalai.page.dart' as _i5;
import 'package:yeksalai/pages/searchAndCompare.page.dart' as _i6;
import 'package:yeksalai/pages/yekSalai.page.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    ContactRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ContactPage(),
      );
    },
    CustomNavigationHomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CustomNavigationHomePage(),
      );
    },
    DashBoardRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DashBoardPage(),
      );
    },
    DetailedYekDescriptionRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedYekDescriptionRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DetailedYekDescriptionPage(
          key: args.key,
          yekPageIndex: args.yekPageIndex,
        ),
      );
    },
    NewYekSalaiRoute.name: (routeData) {
      final args = routeData.argsAs<NewYekSalaiRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.NewYekSalaiPage(
          key: args.key,
          yekPageIndex: args.yekPageIndex,
          yekColor: args.yekColor,
        ),
      );
    },
    SearchAndCompareRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SearchAndComparePage(),
      );
    },
    YekSalaiRoute.name: (routeData) {
      final args = routeData.argsAs<YekSalaiRouteArgs>();
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.YekSalaiPage(
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
class ContactRoute extends _i8.PageRouteInfo<void> {
  const ContactRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ContactRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CustomNavigationHomePage]
class CustomNavigationHomeRoute extends _i8.PageRouteInfo<void> {
  const CustomNavigationHomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CustomNavigationHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomNavigationHomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DashBoardPage]
class DashBoardRoute extends _i8.PageRouteInfo<void> {
  const DashBoardRoute({List<_i8.PageRouteInfo>? children})
      : super(
          DashBoardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashBoardRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DetailedYekDescriptionPage]
class DetailedYekDescriptionRoute
    extends _i8.PageRouteInfo<DetailedYekDescriptionRouteArgs> {
  DetailedYekDescriptionRoute({
    _i9.Key? key,
    required int yekPageIndex,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          DetailedYekDescriptionRoute.name,
          args: DetailedYekDescriptionRouteArgs(
            key: key,
            yekPageIndex: yekPageIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailedYekDescriptionRoute';

  static const _i8.PageInfo<DetailedYekDescriptionRouteArgs> page =
      _i8.PageInfo<DetailedYekDescriptionRouteArgs>(name);
}

class DetailedYekDescriptionRouteArgs {
  const DetailedYekDescriptionRouteArgs({
    this.key,
    required this.yekPageIndex,
  });

  final _i9.Key? key;

  final int yekPageIndex;

  @override
  String toString() {
    return 'DetailedYekDescriptionRouteArgs{key: $key, yekPageIndex: $yekPageIndex}';
  }
}

/// generated route for
/// [_i5.NewYekSalaiPage]
class NewYekSalaiRoute extends _i8.PageRouteInfo<NewYekSalaiRouteArgs> {
  NewYekSalaiRoute({
    _i9.Key? key,
    required int yekPageIndex,
    required _i10.Color yekColor,
    List<_i8.PageRouteInfo>? children,
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

  static const _i8.PageInfo<NewYekSalaiRouteArgs> page =
      _i8.PageInfo<NewYekSalaiRouteArgs>(name);
}

class NewYekSalaiRouteArgs {
  const NewYekSalaiRouteArgs({
    this.key,
    required this.yekPageIndex,
    required this.yekColor,
  });

  final _i9.Key? key;

  final int yekPageIndex;

  final _i10.Color yekColor;

  @override
  String toString() {
    return 'NewYekSalaiRouteArgs{key: $key, yekPageIndex: $yekPageIndex, yekColor: $yekColor}';
  }
}

/// generated route for
/// [_i6.SearchAndComparePage]
class SearchAndCompareRoute extends _i8.PageRouteInfo<void> {
  const SearchAndCompareRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SearchAndCompareRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchAndCompareRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.YekSalaiPage]
class YekSalaiRoute extends _i8.PageRouteInfo<YekSalaiRouteArgs> {
  YekSalaiRoute({
    _i9.Key? key,
    required int yekPageIndex,
    required _i10.Color yekColor,
    List<_i8.PageRouteInfo>? children,
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

  static const _i8.PageInfo<YekSalaiRouteArgs> page =
      _i8.PageInfo<YekSalaiRouteArgs>(name);
}

class YekSalaiRouteArgs {
  const YekSalaiRouteArgs({
    this.key,
    required this.yekPageIndex,
    required this.yekColor,
  });

  final _i9.Key? key;

  final int yekPageIndex;

  final _i10.Color yekColor;

  @override
  String toString() {
    return 'YekSalaiRouteArgs{key: $key, yekPageIndex: $yekPageIndex, yekColor: $yekColor}';
  }
}
