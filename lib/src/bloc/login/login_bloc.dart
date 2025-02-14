import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cmflutter0/src/app.dart';
import 'package:cmflutter0/src/models/user.dart';
import 'package:cmflutter0/src/pages/routes.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState()) {
    //Add
    on<LoginEventAdd>((event, emit) async {
      //excute something
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyWith(count: state.count + 1));
    });
    //Add
    on<LoginEventRemove>((event, emit) async {
      //excute something
      await Future.delayed(Duration(seconds: 1));
      emit(state.copyWith(count: state.count - 1));
    });
    //Login
    on<LoginEventLogin>((event, emit) async {
      //excute something
      if (event.payload.username == "admin" &&
          event.payload.password == "1234") {
        emit(state.copyWith(isAuthented: true));
        if (navigatorState.currentContext != null) {
          Navigator.pushReplacementNamed(
              navigatorState.currentContext!, AppRoute.home);
        }
      } else {
        emit(state.copyWith(isAuthented: false));
      }
    });
  }
}
