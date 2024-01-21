import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final String text;
  final String timestamp;
  final bool isMe;

  const MessageWidget(
      {super.key,
      required this.text,
      required this.isMe,
      required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(8.0),
            color: isMe ? Colors.blue : Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          Text(
            timestamp,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
