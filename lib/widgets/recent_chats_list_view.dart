import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../models/message_model.dart';
import '../screens/chat_screen.dart';

class RecentChatsListView extends StatelessWidget {
  const RecentChatsListView({super.key, required this.chat});

  final Message chat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return ChatScreen(user: chat.sender);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: AssetImage(chat.sender.imageUrl),
          ),
          title: Text(
            chat.sender.name,
            style: const TextStyle(
              color: kMessageTextColor,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            chat.text,
            style: TextStyle(
              color: chat.unread ? kMessageTextColor : Colors.blueGrey,
              fontSize: 15.0,
              fontWeight: chat.unread ? FontWeight.w800 : FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Column(
            children: [
              Text(
                chat.time,
                style: const TextStyle(
                  color: kTimeTextColor,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              chat.unread
                  ? Container(
                      width: 40.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'NEW',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
