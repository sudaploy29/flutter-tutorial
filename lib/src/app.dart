import 'package:cmflutter0/src/bloc/login/login_bloc.dart';
import 'package:cmflutter0/src/pages/home/home_page.dart';
import 'package:cmflutter0/src/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:cmflutter0/src/pages/login/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final navigatorState = GlobalKey<NavigatorState>();

class CMApp extends StatelessWidget {
  const CMApp({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider(create: (context) => LoginBloc());
    return MultiBlocProvider(
        providers: [loginBloc],
        child: MaterialApp(
          title: "CMApp",
          routes: AppRoute.all,
          home: LoginPage(),
          navigatorKey: navigatorState,
        ));
  }
}
