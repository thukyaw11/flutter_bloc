part of 'greeting_bloc.dart';

@immutable
abstract class GreetingState {}

class GreetingInitial extends GreetingState {}

class LoveEmojiState extends GreetingState {
  final String greetingEmoji;
  LoveEmojiState(this.greetingEmoji);
}

class ShyEmojiState extends GreetingState {
  final String greetingEmoji;
  ShyEmojiState(this.greetingEmoji);
}

class SoutKhwtState extends GreetingState {
  final String greetingEmoji;
  SoutKhwtState(this.greetingEmoji);
}

class SoutVeryKhwtState extends GreetingState {
  final String greetingEmoji;
  SoutVeryKhwtState(this.greetingEmoji);
}
