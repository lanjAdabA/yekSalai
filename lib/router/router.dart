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
      ];
}
