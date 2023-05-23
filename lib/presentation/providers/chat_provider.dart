import 'package:flutter/material.dart';
import 'package:yesnoapp/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message_list = [
    Message(text: "hola que tal?", fromWho: FromWho.me),
    Message(text: "htodo bien y tu?", fromWho: FromWho.me),
    Message(text: "aqui pasandola y tu?", fromWho: FromWho.me),
    Message(text: "en la misma y que haras?", fromWho: FromWho.me),
    Message(text: "nada y tu?", fromWho: FromWho.me),
    Message(text: "salen sus fortnite?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    //TODO implementar metodo
  }
}
