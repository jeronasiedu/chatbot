import 'package:flutter/material.dart';

class Message {
  final MessageSender sender;
  final MessageType type;

  final String? mediaUrl;
  final String? text;

  const Message({
    required this.sender,
    required this.type,
    this.mediaUrl,
    this.text,
  });
}

enum MessageType { media, text }

enum MessageSender { bot, human }

extension MessageExtension on Message {
  Color get textColor {
    switch (sender) {
      case MessageSender.bot:
        return Colors.white;
      case MessageSender.human:
        return const Color(0xff232729);
    }
  }

  Color get backgroundColor {
    switch (sender) {
      case MessageSender.bot:
        return const Color(0xff313638);
      case MessageSender.human:
        return const Color.fromRGBO(137, 217, 242, 1);
    }
  }

  BorderRadius get borderRadius {
    switch (sender) {
      case MessageSender.bot:
        return const BorderRadius.only(
          topLeft: Radius.circular(18),
          bottomLeft: Radius.circular(18),
          topRight: Radius.circular(16),
          bottomRight: Radius.circular(4),
        );
      case MessageSender.human:
        return const BorderRadius.only(
          topLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
          topRight: Radius.circular(18),
          bottomLeft: Radius.circular(4),
        );
    }
  }

  BoxBorder? get border {
    switch (sender) {
      case MessageSender.bot:
        return Border.all(color: Colors.grey.withOpacity(0.3));
      case MessageSender.human:
        return null;
    }
  }
}
