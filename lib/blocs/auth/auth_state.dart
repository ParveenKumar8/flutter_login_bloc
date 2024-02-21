part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final String success;

  AuthSuccess(this.success);
}

final class AuthError extends AuthState {
  final String error;

  AuthError(this.error);
}
