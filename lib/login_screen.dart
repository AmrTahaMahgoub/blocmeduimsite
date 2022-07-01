import 'package:blocmeduimsite/screen_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: TryIn(),
    );
  }
}

class TryIn extends StatelessWidget {
  const TryIn({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Widget textstate(LoginState state) {
      if (state is MissionTwo) {
        return Text(state.text);
      }
      else {
        return Text('forced from bloc');
      }
    }

    return BlocConsumer<LoginBloc, LoginState>(

      listener: (context, state) {
      if (state is MissionOne) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => ScreenOne(),
              ));
        } else if (state is MissionThree) {
          showBottomSheet(
              backgroundColor: Colors.amber,
              context: context,
              builder: (context) {
                return Container(
                    height: 100, width: double.infinity, child: Center(child: Text('HI POP')));
              });
        }
      },
      builder: (context, state) {
        return Container(padding: EdgeInsets.all(50),
          child: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      // when i press navigate to screen one ;
                      context.read<LoginBloc>().add(MissionOneEvent());
                    },
                    child: Text('MISSION ONE')),

                TextButton(
                    onPressed: () {
                      //when i press change the textbutton color to red;
                      context.read<LoginBloc>().add(MissionTwoEvent());
                    },
                    child: Text('MISSION TWO')),
                TextButton(
                    onPressed: () {
                      // when i press give me button sheet in the Try in screen ;
                      context.read<LoginBloc>().add(MissionThreeEvent());
                    },
                    child: Text('MISSION THREE')),
                textstate(state),
              ],
            ),
          ),
        );
      },
    );

  }

}
