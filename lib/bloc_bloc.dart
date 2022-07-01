import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {


  LoginBloc() : super(LoginInitial()) {


    on<LoginEvent>(_loginEventHandler);
    on<MissionOneEvent>(_TextButtonOneTapped);
    on<MissionTwoEvent>(_TextButtonTwoTapped);
    on<MissionThreeEvent>(_TextButtonTthreeTapped);


  }


  Future<void> _loginEventHandler(LoginEvent e, Emitter emit) async {
    emit(LoginInitial());
  }



  Future<void> _TextButtonOneTapped(MissionOneEvent e, Emitter emit) async {
    emit(MissionOne());

  }
  Future<void> _TextButtonTwoTapped(MissionTwoEvent e, Emitter emit) async {
    emit(MissionTwo(text: 'MISSION FOUR'),);
  }
  Future<void> _TextButtonTthreeTapped(MissionThreeEvent e, Emitter emit) async {
    emit(MissionThree());
  }
}