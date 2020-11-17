import 'package:bloc_pratice/bloc/greeting_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BloCHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<GreetingBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc test"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DisplayWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FlatButton(
                    height: 82.0,
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    onPressed: () {
                      bloc..add(LoveEmojiEvent());
                    },
                    child: Text(
                      "😍",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                  FlatButton(
                    height: 82.0,
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    onPressed: () {
                      bloc..add(ShyEmojiEvent());
                    },
                    child: Text(
                      "😁",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                  FlatButton(
                    height: 82.0,
                    color: Colors.red,
                    onPressed: () {
                      bloc..add(SoutKhwtEvent());
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      "😜",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                  FlatButton(
                    height: 82.0,
                    color: Colors.red,
                    onPressed: () {
                      bloc..add(SoutVeryKhwtEvent());
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Text(
                      "🤪",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DisplayWidget extends StatelessWidget {
  const DisplayWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GreetingBloc, GreetingState>(builder: (context, state) {
      String _greeting;
      if (state is GreetingInitial) {
        return Container(
          child: Text("loading ..."),
        );
      }

      if (state is LoveEmojiState) {
        _greeting = state.greetingEmoji;
      }

      if (state is ShyEmojiState) {
        _greeting = state.greetingEmoji;
      }

      if (state is SoutKhwtState) {
        _greeting = state.greetingEmoji;
      }

      if (state is SoutVeryKhwtState) {
        _greeting = state.greetingEmoji;
      }

      return Container(
        width: 100.0,
        height: 100.0,
        margin: EdgeInsets.only(bottom: 30.0),
        child: Text(
          '$_greeting',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 85.0),
        ),
      );
    });
  }
}
