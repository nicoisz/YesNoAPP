enum FromWho { me, she }

class Message {
  final String text;
  final String? url;
  final FromWho fromWho;

  Message({required this.text, this.url, required this.fromWho});
}
