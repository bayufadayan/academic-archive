import 'package:flutter/material.dart';

class ChatWidgets {
  static drawer(context) {
    return Drawer(
      backgroundColor: Colors.red.shade400,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 20),
          child: Theme(
            data: ThemeData.dark(),
            child: Column(
              children: [
                const CircleAvatar(
                  // ignore: sort_child_properties_last
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Colors.redAccent,
                  ),
                  radius: 60,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 10),
                const Divider(
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.account_balance),
                  title: const Text('Data'),
                  onTap: () {
                    Navigator.pushNamed(context, '/student');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
