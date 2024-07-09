import 'package:blinkit/screens/WebViewScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:blinkit/provider/loginProvider.dart';
import 'package:blinkit/style/const.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<loginProvider>(
      builder: (context, loginCode, child) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/cropped-blinkit2.png'),
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
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Skip Login',
                                        style: skipStyle,
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/Blinkit-yellow-rounded.png',
                            height: 70,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'India\'s last minute app',
                            style: loginHeadStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Log in or sign up',
                            style: loginHead2Style,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  child: Text(
                                    '+91',
                                    style: loginInput2Style,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: TextFormField(
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
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/otpScreen');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade500,
                              ),
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Text(
                                    'Continue',
                                    style: btnStyle,
                                  )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                                  builder: (context) => WebViewScreen(
                                      url: 'https://blinkit.com/terms'),
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
                                    builder: (context) => WebViewScreen(
                                        url: 'https://blinkit.com/privacy')),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
