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
    await Future.delayed(Duration(seconds: 5));
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
                    Icon(Icons.check_circle, color: Colors.green, size: 50),
                    SizedBox(height: 20),
                    Text('hooray, order placed'),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                            (Route<dynamic> route) => false);
                      },
                      child: Text('OK'),
                    ),
                  ],
                )
              : Column(
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
