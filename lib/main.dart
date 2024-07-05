import 'package:blinkit/provider/loginProvider.dart';
import 'package:blinkit/provider/splashProvider.dart';
import 'package:blinkit/screens/WebViewScreen.dart';
import 'package:blinkit/screens/homeScreen.dart';
import 'package:blinkit/screens/loginScreen.dart';
import 'package:blinkit/screens/otpScreen.dart';
import 'package:blinkit/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //   statusBarColor: Colors.white,
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => loginProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/homeScreen',
        routes: {
          "/splashScreen": (context) => SplashScreen(),
          "/loginScreen": (context) => LoginScreen(),
          "/otpScreen": (context) => OtpScreen(),
          "/homeScreen": (context) => HomeScreen(),
        },
      ),
    );
  }
}
