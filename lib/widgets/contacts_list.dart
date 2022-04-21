import 'package:facebook_ui_demo/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:facebook_ui_demo/models/models.dart';

class ContactsList extends StatelessWidget {
  final List<User> users;
  const ContactsList({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(
                width: 8,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: users.length,
                itemBuilder: (context, index) {
                  final User user = users[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: UserCard(user: user),
                  );
                }),
          )
        ],
      ),
    );
  }
}
