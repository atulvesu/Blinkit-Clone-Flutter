// ignore_for_file: file_names

import 'package:blinkit/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatuiScreeen extends StatefulWidget {
  const ChatuiScreeen({super.key});

  @override
  State<ChatuiScreeen> createState() => _ChatuiScreeenState();
}

class _ChatuiScreeenState extends State<ChatuiScreeen> {
  final List<types.Message> _messages = [
    types.TextMessage(
      author: const types.User(id: 'user2'),
      createdAt: DateTime.now()
          .subtract(const Duration(minutes: 1))
          .millisecondsSinceEpoch,
      id: '1',
      text: 'It\'s not possible sir, allow me 2 min to talk with my team',
    ),
    types.TextMessage(
      author: const types.User(id: 'user1'),
      createdAt: DateTime.now()
          .subtract(const Duration(minutes: 1))
          .millisecondsSinceEpoch,
      id: '2',
      text:
          'Provide me the compensation for my food expenses for the entire month',
    ),
    types.TextMessage(
      author: const types.User(id: 'user2'),
      createdAt: DateTime.now()
          .subtract(const Duration(minutes: 1))
          .millisecondsSinceEpoch,
      id: '3',
      text:
          'I am extremely sorry sir! Its a huge mistake, I agree. As compensation, you need not have to pay the food bill sir. And we shall revise your order again.',
    ),
    types.TextMessage(
      author: const types.User(id: 'user1'),
      createdAt: DateTime.now()
          .subtract(const Duration(minutes: 1))
          .millisecondsSinceEpoch,
      id: '4',
      text:
          ' Do you know it could actually harm a person? Are these your quality standards?',
    ),
    types.TextMessage(
      author: const types.User(id: 'user2'),
      createdAt: DateTime.now()
          .subtract(const Duration(minutes: 1))
          .millisecondsSinceEpoch,
      id: '5',
      text: 'I am really sorry sir! Give me 2 min..',
    ),
    types.TextMessage(
      author: const types.User(id: 'user1'),
      createdAt: DateTime.now()
          .subtract(const Duration(minutes: 1))
          .millisecondsSinceEpoch,
      id: '6',
      text: ' I find this iron nail in the side dish. This is ridiculous.',
    ),
    types.TextMessage(
      author: const types.User(id: 'user2'),
      createdAt: DateTime.now()
          .subtract(const Duration(minutes: 1))
          .millisecondsSinceEpoch,
      id: '7',
      text: 'Hey, This is Blinkit Support, How can we help you?',
    ),
  ];

  final _user = const types.User(id: 'user1');

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: 'message-${_messages.length + 1}',
      text: message.text,
    );

    setState(() {
      _messages.insert(0, textMessage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          title: 'Blinkit Support',
          onPress: () {
            Navigator.pop(context);
          }),
      body: Chat(
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user,
        theme: const DefaultChatTheme(
          inputBackgroundColor: Colors.black,
          inputTextColor: Colors.white,
        ),
      ),
    );
  }
}
