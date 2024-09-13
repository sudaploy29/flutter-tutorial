part of 'login_bloc.dart';

enum AuthenStatus { init, success, failed }

class LoginState extends Equatable {
  final int count;
  final bool isAuthented;
  const LoginState({
    this.count = 0,
    this.isAuthented = false,
  });

  LoginState copyWith({int? count, bool? isAuthented}) {
    return LoginState(
      count: count ?? this.count,
      isAuthented: isAuthented ?? this.isAuthented,
    );
  }

  @override
  List<Object?> get props => [count, isAuthented];
}
