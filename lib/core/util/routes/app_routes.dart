import 'package:auto_route/auto_route.dart';

import 'app_routes.gr.dart';


@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginView.page,path: '/Login',initial: true),
    AutoRoute(page: DashboardRoute.page,path: '/Dashboard'),
  ];
}