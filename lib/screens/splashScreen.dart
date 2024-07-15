// ignore_for_file: file_names

import 'package:blinkit/provider/splashProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8cb46),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
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
