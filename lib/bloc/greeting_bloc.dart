import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'greeting_event.dart';
part 'greeting_state.dart';

class GreetingBloc extends Bloc<GreetingEvent, GreetingState> {
  GreetingBloc() : super(GreetingInitial());

  static const List<String> emojis = ['😍', '😁', '😜', '🤪'];

  @override
  Stream<GreetingState> mapEventToState(
    GreetingEvent event,
  ) async* {
    if (event is LoveEmojiEvent) {
      yield GreetingInitial();
      yield LoveEmojiState(await _getEmoji(0));
    }
    if (event is ShyEmojiEvent) {
      yield GreetingInitial();
      yield ShyEmojiState(await _getEmoji(1));
    }
    if (event is SoutKhwtEvent) {
      yield GreetingInitial();
      yield SoutKhwtState(await _getEmoji(2));
    }
    if (event is SoutVeryKhwtEvent) {
      yield GreetingInitial();
      yield SoutVeryKhwtState(await _getEmoji(3));
    }
  }

  Future<String> _getEmoji(int index) async {
    return emojis[index];
  }
}
