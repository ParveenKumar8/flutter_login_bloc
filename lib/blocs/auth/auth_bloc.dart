import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthLoginRequested>((event, emit) {
      emit(AuthLoading());
      try {
        String email = event.email;
        String password = event.password;

        if (email.isEmpty || password.isEmpty) {
          return emit(AuthError("Enter required fields."));
        }
        final bool emailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(email);
        if (!emailValid) {
          return emit(AuthError("Enter valid email address."));
        }
        if (password.length < 6) {
          emit(AuthError("Password length should be more than 6 characters."));
        }
        Future.delayed(const Duration(seconds: 3));
        emit(AuthSuccess('$email - $password'));
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });
  }
}
