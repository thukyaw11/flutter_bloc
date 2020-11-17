import 'package:bloc_pratice/bloc/greeting_bloc.dart';
import 'package:bloc_pratice/ui/bloc_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GreetingBloc>(
      create: (context) => GreetingBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BloCHome(),
      ),
    );
  }
}
