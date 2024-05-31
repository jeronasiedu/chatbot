import 'package:chatbot/widgets/media_message.dart';
import 'package:chatbot/widgets/text_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/messages.dart';
import '../entities/message.dart';

class ChatWithAiPage extends StatelessWidget {
  const ChatWithAiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat with AI Bot"),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.only(bottom: 25),
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return Align(
                      alignment: message.sender == MessageSender.human ? Alignment.centerRight : Alignment.centerLeft,
                      child: message.type == MessageType.text
                          ? TextMessage(message: message)
                          : MediaMessage(message: message),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(height: 20),
                  itemCount: messages.length,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Type your message...",
                  prefixIcon: const Icon(Icons.link),
                  suffixIcon: const Icon(CupertinoIcons.mic),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
