import 'package:flutter/cupertino.dart';

abstract class LoginEvent {}

class LoginUsernameChanged extends LoginEvent {
  final String Username;

  LoginUsernameChanged(this.Username);
}

class LoginPasswordChanged extends LoginEvent {
  final String password;

  LoginPasswordChanged(this.password);
}

class loginSubitted extends LoginEvent {}
