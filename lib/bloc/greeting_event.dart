part of 'greeting_bloc.dart';

@immutable
abstract class GreetingEvent {}

class LoveEmojiEvent extends GreetingEvent {}

class ShyEmojiEvent extends GreetingEvent {}

class SoutKhwtEvent extends GreetingEvent {}

class SoutVeryKhwtEvent extends GreetingEvent {}
