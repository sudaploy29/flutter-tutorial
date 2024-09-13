import 'package:bloc/bloc.dart';
import 'package:cmflutter0/src/models/user.dart';
import 'package:equatable/equatable.dart';
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
      }
      emit(state.copyWith(isAuthented: false));
    });
  }
}
