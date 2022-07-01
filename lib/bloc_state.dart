part of 'bloc_bloc.dart';


abstract class LoginState {
  const LoginState();
}

class LoginInitial extends LoginState {}
class MissionOne extends LoginState {

}
class MissionTwo extends LoginState {
  MissionTwo({ required this.text});
  final String text;


}
class MissionThree extends LoginState {

}
