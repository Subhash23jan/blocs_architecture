part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthSuccess extends AuthState {
  final String message;
  AuthSuccess( this.message);
}

class AuthFail extends AuthState {
  final String error;
  AuthFail( this.error);
  
}

class AuthLoading extends AuthState {}
