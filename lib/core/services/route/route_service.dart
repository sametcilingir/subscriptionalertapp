import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:subscriptionalertapp/core/constants/route_constant.dart';

import '../../../features/home/view/home_view.dart';
import '../../../features/init/view/init_view.dart';
import 'base/base_route_service.dart';

@injectable
class RouteService implements BaseRouteService {
  RouteService(
    @factoryParam this._context,
  );

  final BuildContext _context;

  final globalRoutes = GoRouter(
    initialLocation: RouteConstant.INIT,
    routes: [
      GoRoute(
        path: RouteConstant.INIT,
        builder: (context, state) => const InitView(),
      ),
      GoRoute(
        path: RouteConstant.HOME,
        builder: (context, state) =>
            HomeView(infoFromNotification: state.extra),
      ),
    ],
  );

  @override
  void push({required String route}) {
    GoRouter.of(_context).push(route);
  }

  @override
  void pushWithArgs({required String route, required Object args}) {
    GoRouter.of(_context).push(route, extra: args);
  }

  @override
  void pop() {
    GoRouter.of(_context).pop();
  }

  @override
  void go({required String route}) {
    GoRouter.of(_context).go(route);
  }
}
