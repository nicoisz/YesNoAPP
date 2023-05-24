import 'package:flutter/material.dart';
import 'package:yesnoapp/config/helpers/get_api_response.dart';
import 'package:yesnoapp/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final GetApiAnswer getApiAnswer = GetApiAnswer();

  List<Message> message_list = [];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;
    final newMessage = Message(text: text, fromWho: FromWho.me, url: null);
    message_list.add(newMessage);

    if (text.endsWith('?')) {
      apiResponse();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> apiResponse() async {
    final herMessage = await getApiAnswer.getAnswer();
    print(herMessage.fromWho);
    message_list.add(herMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeIn);
  }
}
