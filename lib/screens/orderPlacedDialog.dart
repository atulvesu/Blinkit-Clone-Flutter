// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class OrderPlacedDialog extends StatefulWidget {
  @override
  _OrderPlacedDialogState createState() => _OrderPlacedDialogState();
}

class _OrderPlacedDialogState extends State<OrderPlacedDialog> {
  bool _isOrderPlaced = false;

  @override
  void initState() {
    super.initState();
    _startOrderProcess();
  }

  void _startOrderProcess() async {
    await Future.delayed(const Duration(seconds: 5));
    setState(() {
      _isOrderPlaced = true;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    const Text('hooray, order placed'),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                            (Route<dynamic> route) => false);
                      },
                      child: const Text('OK'),
                    ),
                  ],
                )
              : const Column(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text('Placing order'),
                  ],
                ),
        ],
      ),
    );
  }
}
