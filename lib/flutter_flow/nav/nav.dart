import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => ALoginSalaoNexlaWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => ALoginSalaoNexlaWidget(),
        ),
        FFRoute(
          name: ALoginSalaoNexlaWidget.routeName,
          path: ALoginSalaoNexlaWidget.routePath,
          builder: (context, params) => ALoginSalaoNexlaWidget(),
        ),
        FFRoute(
          name: BHomeSalaoNexlaWidget.routeName,
          path: BHomeSalaoNexlaWidget.routePath,
          builder: (context, params) => BHomeSalaoNexlaWidget(),
        ),
        FFRoute(
          name: BAgendamentoSalaoNexlaWidget.routeName,
          path: BAgendamentoSalaoNexlaWidget.routePath,
          builder: (context, params) => BAgendamentoSalaoNexlaWidget(),
        ),
        FFRoute(
          name: BPainelSalaoNexlaWidget.routeName,
          path: BPainelSalaoNexlaWidget.routePath,
          builder: (context, params) => BPainelSalaoNexlaWidget(),
        ),
        FFRoute(
          name: BBEditarPerfilSalaoNexlaWidget.routeName,
          path: BBEditarPerfilSalaoNexlaWidget.routePath,
          builder: (context, params) => BBEditarPerfilSalaoNexlaWidget(),
        ),
        FFRoute(
          name: CServicoSalaoNexlaWidget.routeName,
          path: CServicoSalaoNexlaWidget.routePath,
          builder: (context, params) => CServicoSalaoNexlaWidget(),
        ),
        FFRoute(
          name: CProfissionalSalaoNexlaWidget.routeName,
          path: CProfissionalSalaoNexlaWidget.routePath,
          builder: (context, params) => CProfissionalSalaoNexlaWidget(),
        ),
        FFRoute(
          name: CDiaHoraSalaoNexlaWidget.routeName,
          path: CDiaHoraSalaoNexlaWidget.routePath,
          builder: (context, params) => CDiaHoraSalaoNexlaWidget(),
        ),
        FFRoute(
          name: CConfirmarSalaoNexlaWidget.routeName,
          path: CConfirmarSalaoNexlaWidget.routePath,
          builder: (context, params) => CConfirmarSalaoNexlaWidget(),
        ),
        FFRoute(
          name: ZSenhasWidget.routeName,
          path: ZSenhasWidget.routePath,
          builder: (context, params) => ZSenhasWidget(),
        ),
        FFRoute(
          name: DServicoSalaoNexlaWidget.routeName,
          path: DServicoSalaoNexlaWidget.routePath,
          builder: (context, params) => DServicoSalaoNexlaWidget(),
        ),
        FFRoute(
          name: DProfissionalSalaoNexlaWidget.routeName,
          path: DProfissionalSalaoNexlaWidget.routePath,
          builder: (context, params) => DProfissionalSalaoNexlaWidget(),
        ),
        FFRoute(
          name: DDiaHoraSalaoNexlaWidget.routeName,
          path: DDiaHoraSalaoNexlaWidget.routePath,
          builder: (context, params) => DDiaHoraSalaoNexlaWidget(),
        ),
        FFRoute(
          name: DConfirmarSalaoNexlaWidget.routeName,
          path: DConfirmarSalaoNexlaWidget.routePath,
          builder: (context, params) => DConfirmarSalaoNexlaWidget(),
        ),
        FFRoute(
          name: ACadastroClienteSalaoNexlaWidget.routeName,
          path: ACadastroClienteSalaoNexlaWidget.routePath,
          builder: (context, params) => ACadastroClienteSalaoNexlaWidget(),
        ),
        FFRoute(
          name: AEsqueciSenhaSalaoNexlaWidget.routeName,
          path: AEsqueciSenhaSalaoNexlaWidget.routePath,
          builder: (context, params) => AEsqueciSenhaSalaoNexlaWidget(),
        ),
        FFRoute(
          name: AConfirmaEmailSalaoNexlaWidget.routeName,
          path: AConfirmaEmailSalaoNexlaWidget.routePath,
          builder: (context, params) => AConfirmaEmailSalaoNexlaWidget(),
        ),
        FFRoute(
          name: EHomeAdmSalaoNexlaWidget.routeName,
          path: EHomeAdmSalaoNexlaWidget.routePath,
          builder: (context, params) => EHomeAdmSalaoNexlaWidget(),
        ),
        FFRoute(
          name: FGerenciarFuncionarioSalaoNexlaWidget.routeName,
          path: FGerenciarFuncionarioSalaoNexlaWidget.routePath,
          builder: (context, params) => FGerenciarFuncionarioSalaoNexlaWidget(),
        ),
        FFRoute(
          name: FFAddFuncionarioSalaoNexlaWidget.routeName,
          path: FFAddFuncionarioSalaoNexlaWidget.routePath,
          builder: (context, params) => FFAddFuncionarioSalaoNexlaWidget(),
        ),
        FFRoute(
          name: FFEditarFuncionarioSalaoNexlaWidget.routeName,
          path: FFEditarFuncionarioSalaoNexlaWidget.routePath,
          builder: (context, params) => FFEditarFuncionarioSalaoNexlaWidget(),
        ),
        FFRoute(
          name: GGerenciarServicoSalaoNexlaWidget.routeName,
          path: GGerenciarServicoSalaoNexlaWidget.routePath,
          builder: (context, params) => GGerenciarServicoSalaoNexlaWidget(),
        ),
        FFRoute(
          name: GGAdicionarServicoSalaoNexlaWidget.routeName,
          path: GGAdicionarServicoSalaoNexlaWidget.routePath,
          builder: (context, params) => GGAdicionarServicoSalaoNexlaWidget(),
        ),
        FFRoute(
          name: GGEditarServicoSalaoNexlaWidget.routeName,
          path: GGEditarServicoSalaoNexlaWidget.routePath,
          builder: (context, params) => GGEditarServicoSalaoNexlaWidget(),
        ),
        FFRoute(
          name: EAgendaSalaoNexlaWidget.routeName,
          path: EAgendaSalaoNexlaWidget.routePath,
          builder: (context, params) => EAgendaSalaoNexlaWidget(),
        ),
        FFRoute(
          name: ERelatorioSalaoNexlaWidget.routeName,
          path: ERelatorioSalaoNexlaWidget.routePath,
          builder: (context, params) => ERelatorioSalaoNexlaWidget(),
        ),
        FFRoute(
          name: HHomeColaboradorSalaoNexlaWidget.routeName,
          path: HHomeColaboradorSalaoNexlaWidget.routePath,
          builder: (context, params) => HHomeColaboradorSalaoNexlaWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
