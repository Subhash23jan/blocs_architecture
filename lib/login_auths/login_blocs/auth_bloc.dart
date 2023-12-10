import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      on<LoginRequested>(
        (event, emit) async {
          String email = event.email;
          String password = event.password;
          if (!email.contains('@')) {
            return emit(AuthFail('Email should have @ symbol'));
          } else if (password.length < 6) {
            return emit(AuthFail('password should have atleast 6 character'));
          }
          return emit(AuthSuccess('login successfull with email $email'));
        },
      );
      on<LogoutRequested>(
        (event, emit) async {
          emit(AuthLoading());
          try {
            Future.delayed(
                const Duration(seconds: 1), () => {emit(AuthInitial())});
          } catch (e) {
            emit(AuthFail(e.toString()));
          }
        },
      );
    });
  }
}
