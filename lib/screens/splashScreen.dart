import 'package:blinkit/provider/splashProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8cb46),
      body: Consumer<SplashProvider>(
        builder: (context, splashProvider, child) {
          splashProvider.nxtScreen(context);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'A ZOMATO COMPANY',
                style: TextStyle(fontFamily: 'Poppins-Bold', fontSize: 18),
              ),
            ],
          );
        },
      ),
    );
  }
}
