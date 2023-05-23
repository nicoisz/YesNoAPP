import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yesnoapp/domain/entities/message.dart';
import 'package:yesnoapp/presentation/providers/chat_provider.dart';
import 'package:yesnoapp/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yesnoapp/presentation/widgets/chat/shared/message_field_box.dart';

import '../../widgets/chat/her_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("chat screen"),
          centerTitle: false,
          leading: const Padding(
            padding: EdgeInsets.all(4.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.ytimg.com/vi/gBUEhwhFJ3I/maxresdefault.jpg"),
            ),
          ),
        ),
        body: _ChatView());
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.message_list.length,
                itemBuilder: (BuildContext context, int index) {
                  final message = chatProvider.message_list[index];

                  return (message.fromWho == FromWho.she)
                      ? const HerMessageBubble()
                      : MyMessageBubble( message : message);
                },
              ),
            ),
            MessageFieldBox()
          ],
        ),
      ),
    );
  }
}
