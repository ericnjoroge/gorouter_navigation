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
    routes: [],
    //TODO: Add Error Handler
    //TODO: Add redirect
  );
}
