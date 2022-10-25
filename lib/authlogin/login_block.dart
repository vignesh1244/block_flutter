import 'package:bolc_api/authlogin/form_submiton_status.dart';
import 'package:bolc_api/authlogin/login_event.dart';
import 'package:bolc_api/authlogin/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class loginBloc extends Bloc<LoginEvent, LoginState> {
  loginBloc() : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginUsernameChanged) {
      yield state.copyWith(username: event.Username);
    } else if (event is LoginPasswordChanged) {
      yield state.copyWith(password: event.password);
    } else if (event is loginSubitted) {
      yield state.copyWith(formStatus: FormSubmitting());
    }
  }
}
