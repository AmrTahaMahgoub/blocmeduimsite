part of 'bloc_bloc.dart';




abstract class LoginEvent {
  const LoginEvent();
}
class MissionOneEvent extends LoginEvent {}
class MissionTwoEvent extends LoginEvent {}
class MissionThreeEvent extends LoginEvent {}