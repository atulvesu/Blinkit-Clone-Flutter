// ignore_for_file: file_names, override_on_non_overriding_member, use_build_context_synchronously
import 'package:blinkit/screens/WebViewScreen.dart';
import 'package:blinkit/screens/homeScreen.dart';
import 'package:blinkit/screens/nextScreen.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:blinkit/provider/loginProvider.dart';
import 'package:blinkit/style/const.dart';

final _loginFormKey = GlobalKey<FormState>();

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  final _phoneNumberController = TextEditingController();

  bool isValidPhoneNumber(String phoneNumber) {
    final RegExp phoneRegExp = RegExp(
      r"^[6-9]\d{9}$",
    );
    return phoneRegExp.hasMatch(phoneNumber);
  }

  @override
  void initState() {
    super.initState();
    _printFCMToken();
  }

  Future<void> _printFCMToken() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    String? token = await messaging.getToken();
    print("FCM Token: $token");
  }

  // Future<void> signInwithGoogle() async {
  //   try {
  //     GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  //     GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  //     AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );
  //     UserCredential userCredential =
  //         await FirebaseAuth.instance.signInWithCredential(credential);
  //     print(userCredential.user?.displayName);

  //     if (userCredential.user != null) {
  //       // Retrieve and print FCM token
  //       FirebaseMessaging messaging = FirebaseMessaging.instance;
  //       String? token = await messaging.getToken();
  //       print("FCM Token: $token");

  //       Navigator.of(context).push(MaterialPageRoute(
  //         builder: (context) => Nextscreen(),
  //       ));
  //     }
  //   } catch (e) {
  //     print("Error signing in with Google: $e");
  //   }
  // }

  // second attempt
  Future<void> signInwithGoogle(BuildContext context) async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        print("Google sign-in aborted");
        return;
      }

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      if (userCredential.user != null) {
        // Retrieve and print FCM token
        print("hello  ${userCredential.user}");
        FirebaseMessaging messaging = FirebaseMessaging.instance;
        String? token = await messaging.getToken();
        print("FCM Token: $token");

        // Navigate to the next screen
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const Nextscreen(),
        ));
      }
    } catch (e) {
      print("Error signing in with Google: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<loginProvider>(
      builder: (context, loginCode, child) => Scaffold(
        body: SafeArea(
          child: Form(
            key: _loginFormKey,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Center(
                                child: Image.asset(
                                  'assets/images/login_page.jpg',
                                  fit: BoxFit.contain,
                                  height: 500,
                                ),
                              ),
                              Positioned(
                                right: 20,
                                top: 10,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/homeScreen');
                                  },
                                  child: Card(
                                    elevation: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Skip Login',
                                        style: skipStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/Blinkit-yellow-rounded.png',
                              height: 70,
                            ),
                            SizedBox(
                              height: Dimensions.height(10),
                            ),
                            Text(
                              'India\'s last minute app',
                              style: loginHeadStyle,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Log in or sign up',
                              style: loginHead2Style,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Text(
                                      '+91',
                                      style: loginInput2Style,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Expanded(
                                    child: TextFormField(
                                      controller: _phoneNumberController,
                                      keyboardType: TextInputType.number,
                                      maxLength: 10,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        hintStyle: loginInputStyle,
                                        hintText: 'Enter Mobile Number',
                                        border: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        counterText: '',
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please Enter a mobile number';
                                        } else if (!isValidPhoneNumber(value)) {
                                          return 'Please Enter a valid mobile number';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/otpScreen');
                              },
                              child: InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //       builder: (context) => const HomeScreen(),
                                  //     ));

                                  if (_loginFormKey.currentState!.validate()) {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen(),
                                      ),
                                      (route) => false,
                                    );
                                  }
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade500,
                                  ),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text(
                                          'Continue',
                                          style: btnStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            TextButton(
                                onPressed: () {
                                  signInwithGoogle(context);
                                },
                                child: const Text('Sign in with google')),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.grey.shade200,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'By continuing, you agree to our',
                              style: lastStyle,
                            ),
                            InkWell(
                              child: Text(
                                ' Terms of service',
                                style: last2Style,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const WebViewScreen(
                                      url: 'https://blinkit.com/terms',
                                    ),
                                  ),
                                );
                              },
                            ),
                            Text(
                              ' & ',
                              style: lastStyle,
                            ),
                            InkWell(
                              child: Text(
                                'Privacy policy',
                                style: last2Style,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const WebViewScreen(
                                      url: 'https://blinkit.com/privacy',
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
