import '../entities/message.dart';

List<Message> messages = [
  const Message(
    text: "Describe and show me the perfect vacation spot on an island in the ocean",
    type: MessageType.text,
    sender: MessageSender.human,
  ),
  const Message(
    type: MessageType.media,
    text:
        "Imagine yourself on an idyllic island in the middle of the vast ocean, where turquoise waters and powdery white sand surround you. This perfect vacation spot is a tropical paradise that offers a blend of tranquility and adventure.",
    sender: MessageSender.bot,
    mediaUrl:
        'https://images.unsplash.com/photo-1520454974749-611b7248ffdb?q=80&w=3648&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  const Message(
    text: "I hope you can enjoy your vacation!",
    type: MessageType.text,
    sender: MessageSender.human,
  ),
  const Message(
    type: MessageType.media,
    text:
        "Imagine yourself on an idyllic island in the middle of the vast ocean, where turquoise waters and powdery white sand surround you. This perfect vacation spot is a tropical paradise that offers a blend of tranquility and adventure.",
    sender: MessageSender.bot,
    mediaUrl:
        'https://images.unsplash.com/photo-1520454974749-611b7248ffdb?q=80&w=3648&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
];
