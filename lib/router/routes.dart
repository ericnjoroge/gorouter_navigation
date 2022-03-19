import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/create_account.dart';
import '../ui/error_page.dart';
import '../ui/home_screen.dart';
import '../ui/more_info.dart';
import '../ui/payment.dart';
import '../ui/personal_info.dart';
import '../ui/signin_info.dart';
import '../ui/login.dart';
import '../ui/details.dart';
import '../constants.dart';
import '../login_state.dart';

class AppRouter {
  final LoginState loginState;
  AppRouter(this.loginState);

  late final router = GoRouter(
    refreshListenable: loginState,
    debugLogDiagnostics: true,
    urlPathStrategy: UrlPathStrategy.path,
    routes: [
      GoRoute(
        name: rootRouteName,
        path: '/',
        redirect: (state) =>
            //TODO: Change to Home Route
            state.namedLocation(loginRouteName),
      ),
      GoRoute(
        name: loginRouteName,
        path: '/login',
        pageBuilder: (context, state) =>
            MaterialPage<void>(key: state.pageKey, child: const Login()),
      ),
      GoRoute(
        name: createAccountRouteName,
        path: '/create-account',
        pageBuilder: (context, state) =>
            MaterialPage(key: state.pageKey, child: const CreateAccount()),
      ),
      //TODO: Add Home Route annd Children
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorPage(error: state.error),
    ),
    //TODO: Add redirect
  );
}
