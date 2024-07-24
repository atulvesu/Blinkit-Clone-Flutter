import 'package:blinkit/provider/loginProvider.dart';
import 'package:blinkit/provider/splashProvider.dart';
import 'package:blinkit/screens/homeScreen.dart';
import 'package:blinkit/screens/loginScreen.dart';
import 'package:blinkit/screens/otpScreen.dart';
import 'package:blinkit/screens/splashScreen.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Restrict orientation to portrait mode only
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => loginProvider(),
        ),
      ],
      child: Builder(
        builder: (context) {
          Dimensions.init(context);

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
              fontFamily: 'NunitoSans',
            ),
            initialRoute: '/splashScreen',
            routes: {
              "/splashScreen": (context) => const SplashScreen(),
              "/loginScreen": (context) => const LoginScreen(),
              "/otpScreen": (context) => const OtpScreen(),
              "/homeScreen": (context) => const HomeScreen(),
            },
          );
        },
      ),
    );
  }
}
