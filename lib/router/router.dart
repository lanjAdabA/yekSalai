import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:yeksalai/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: CustomNavigationHomeRoute.page,
          children: const [
            // AutoRoute(path: 'yekSalai', page: YekSalaiRoute.page),
            // AutoRoute(path: 'posts', page: PostsRoute.page),
            // AutoRoute(path: 'settings', page: SettingsRoute.page),
          ],
        ),
        AutoRoute(
          path: '/yekSalai',
          page: YekSalaiRoute.page,
        ),
        AutoRoute(
          path: '/newyekSalai',
          page: NewYekSalaiRoute.page,
        ),
        AutoRoute(
          path: '/searchNcompare',
          page: SearchAndCompareRoute.page,
        ),
        AutoRoute(
          path: '/contactUs',
          page: ContactRoute.page,
        ),
        AutoRoute(
          path: '/detailedYekDescription',
          page: DetailedYekDescriptionRoute.page,
        ),
        AutoRoute(
          path: '/itemDescription',
          page: ItemDescriptionRoute.page,
        ),
        AutoRoute(
          path: '/yekThoknaba',
          page: YekThoknabaRoute.page,
        ),
        AutoRoute(
          path: '/yelhen',
          page: YelhenRoute.page,
        ),
        AutoRoute(
          path: '/hourakfam',
          page: HourakfamRoute.page,
        ),
        AutoRoute(
          path: '/machuThangLei',
          page: MachuThangLeiRoute.page,
        ),
        AutoRoute(
          path: '/anangMaming',
          page: AnangMamingRoute.page,
        ),
        AutoRoute(
          path: '/laipu',
          page: LaipuRoute.page,
        ),
        AutoRoute(
          path: '/apokpaKhoirambaNumit',
          page: ApokpaKhoirambaNumitRoute.page,
        ),
        // AutoRoute(
        //   path: '/yekThoknaba',
        //   page: YekThoknabaRoute.page,
        // ),
      ];
}
