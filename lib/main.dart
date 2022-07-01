import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_bloc.dart';
import 'login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: MaterialApp(
        home: LoginScreen(),


      ),
    );
  }
}

// BlocProvider(
// create: (BuildContext context) {
// return LoginBloc();
// },
// child: const LoginScreen(),
// );