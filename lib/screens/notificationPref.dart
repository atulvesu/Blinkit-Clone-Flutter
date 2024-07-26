// ignore: unused_import
// ignore_for_file: file_names, unused_import, duplicate_ignore

import 'package:blinkit/screens/homeScreen2.dart';
import 'package:blinkit/style/const.dart';
import 'package:blinkit/widgets/appBarWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notificationpreferences extends StatefulWidget {
  const Notificationpreferences({super.key});

  @override
  State<Notificationpreferences> createState() =>
      _NotificationpreferencesState();
}

class _NotificationpreferencesState extends State<Notificationpreferences> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
            title: 'Notification preferences',
            onPress: () {
              Navigator.pop(context);
            }),
        body: Column(
          children: [
            Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset('assets/images/WhatsApp_icon.png'),
                title: const Text(
                  'Promos and offer',
                  style: card5,
                ),
                subtitle: Text(
                  'Receive Whatsapp updates about coupons, romostions and offers',
                  style: cartStyle2,
                ),
                trailing: CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                      var snackdemo = SnackBar(
                        content: const Text(
                            'Notification preferences updated successfully'),
                        backgroundColor: Colors.green,
                        elevation: 10,
                        behavior: SnackBarBehavior.floating,
                        margin: const EdgeInsets.all(40),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.2),
                          borderRadius: BorderRadius.circular(50),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                    });
                  },
                ),
              ),
            )
          ],
        ));
  }
}
