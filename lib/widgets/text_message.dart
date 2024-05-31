import 'package:chatbot/entities/message.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      constraints: BoxConstraints(maxWidth: size.width * 0.75),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: message.backgroundColor,
        borderRadius: message.borderRadius,
      ),
      child: Text(
        message.text!,
        style: TextStyle(color: message.textColor),
      ),
    );
  }
}
