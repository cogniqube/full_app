import 'package:flutter/material.dart';
import 'package:full_app/Components/post_items.dart';
import 'package:full_app/styles/App_text.dart';
import 'package:full_app/styles/app_colors.dart';
import 'package:full_app/pages/main_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
      appBar: AppBar(
        title: Text('Contents'),
        backgroundColor: AppColors.background,
        actions: [
          Icon(Icons.location_on_outlined),
        ],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return PostItems(
            user: users[index],
          );
        },
        itemCount: users.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 24);
        },
      ),
    );
  }

  mockUsersFromServer() {
    for (var i = 0; i < 100; i++) {
      users.add('User Number $i');
    }
  }
}
