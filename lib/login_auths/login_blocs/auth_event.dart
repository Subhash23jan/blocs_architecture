part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class LoginRequested extends AuthEvent{
 final String email,password;

 LoginRequested(this.email, this.password);

}
class LogoutRequested extends AuthEvent{}
