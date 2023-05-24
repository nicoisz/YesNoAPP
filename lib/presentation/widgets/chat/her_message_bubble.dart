import 'package:flutter/material.dart';
import 'package:yesnoapp/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  Message message;

  HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              finalText(message.text.toString()) as String,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _ImageBulbble(message),
        const SizedBox(height: 10)
      ],
    );
  }
}

finalText(String text) {
      final String finalText;

      switch (text) {
        case 'yes':
          return finalText = 'si';
        case 'no':
          return finalText = 'no';
        case 'maybe':
          return finalText = 'tal vez';
      }
   
}

class _ImageBulbble extends StatelessWidget {
  Message message;

  _ImageBulbble(Message this.message);

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          width: Size.width * 0.5,
          height: 150,
          message.url.toString(),
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              width: Size.width * .5,
              height: 150,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text("estan escribiendo..."),
            );
          },
        ));
  }
}
