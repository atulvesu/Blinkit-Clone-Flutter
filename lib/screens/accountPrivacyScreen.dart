// ignore_for_file: unused_import, file_names

import 'package:blinkit/screens/homeScreen.dart';
import 'package:blinkit/screens/loginScreen.dart';
import 'package:flutter/material.dart';

class AccountPrivacyScreen extends StatefulWidget {
  const AccountPrivacyScreen({super.key});

  @override
  State<AccountPrivacyScreen> createState() => _AccountPrivacyScreenState();
}

class _AccountPrivacyScreenState extends State<AccountPrivacyScreen> {
  bool readMore = true;
  bool _isOrderPlaced = false;

  @override
  void initState() {
    super.initState();
  }

  void _startOrderProcess(Function setStateDialog) async {
    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      _isOrderPlaced = true;
    });
    setStateDialog(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Account privacy',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Account privacy and policy'),
              const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'),
              const SizedBox(
                height: 20,
              ),
              readMore
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          readMore = !readMore;
                        });
                      },
                      child: const Row(
                        children: [
                          Text(
                            'Read more',
                            style: TextStyle(color: Colors.green, fontSize: 14),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.green,
                          )
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        const Text(
                            'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.'),
                        const SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              readMore = !readMore;
                            });
                          },
                          child: const Row(
                            children: [
                              Text(
                                'Read less',
                                style: TextStyle(
                                    color: Colors.green, fontSize: 14),
                              ),
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.green,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return StatefulBuilder(
                        builder: (context, setStateDialog) {
                          _startOrderProcess(setStateDialog);
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _isOrderPlaced
                                    ? Column(
                                        children: [
                                          const Icon(Icons.check_circle,
                                              color: Colors.green, size: 50),
                                          const SizedBox(height: 20),
                                          const Text(
                                              'Account deleted successfully'),
                                          const SizedBox(height: 20),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.pushAndRemoveUntil(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LoginScreen(),
                                                  ),
                                                  (Route<dynamic> route) =>
                                                      false);
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      )
                                    : const Column(
                                        children: [
                                          CircularProgressIndicator(),
                                          SizedBox(height: 20),
                                          Text('Deleting account'),
                                        ],
                                      ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.delete_rounded),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Request to delete account'),
                              Text('Request to closure of your account'),
                            ],
                          )
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
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

// void main() {
//   runApp(MaterialApp(
//     home: AccountPrivacyScreen(),
//   ));
// }
