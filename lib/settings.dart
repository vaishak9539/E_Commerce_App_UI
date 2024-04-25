// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  var settingsOptions = [
    "Privacy",
    "Notifications",
    "Select language",
    "Notification settings",
    "Help center"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: ListView.separated(
            itemBuilder: (ctx, index) {
              return ListTile(
                title: Text(settingsOptions[index]),
              );
            },
            separatorBuilder: (ctx, index) => Divider(),
            itemCount: 5),
      ),
    );
  }
}
