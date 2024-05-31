import 'package:chatbot/entities/message.dart';
import 'package:flutter/material.dart';

class MediaMessage extends StatelessWidget {
  const MediaMessage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: size.width * 0.75),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: message.border,
              color: message.backgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                bottomRight: Radius.circular(18),
                topRight: Radius.circular(18),
                bottomLeft: Radius.circular(4),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      message.mediaUrl!,
                      height: 350,
                      width: double.maxFinite,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  message.text!,
                  style: TextStyle(color: message.textColor),
                ),
              ],
            ),
          ),
          Row(
            children: [
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.thumb_up),
                iconSize: 18,
              ),
              const SizedBox(width: 10),
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.thumb_down),
                iconSize: 18,
              ),
              const Spacer(),
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.copy),
                iconSize: 18,
              ),
            ],
          )
        ],
      ),
    );
  }
}
