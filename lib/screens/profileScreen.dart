// ignore_for_file: file_names
import 'package:blinkit/screens/aboutusScreen.dart';
import 'package:blinkit/screens/accountPrivacyScreen.dart';
import 'package:blinkit/screens/addressScreen.dart';
import 'package:blinkit/screens/chatuiScreen.dart';
import 'package:blinkit/screens/collectedcoupons.dart';
import 'package:blinkit/screens/customModal.dart';
import 'package:blinkit/screens/loginScreen.dart';
import 'package:blinkit/screens/notificationPref.dart';
import 'package:blinkit/screens/orderScreen.dart';
import 'package:blinkit/screens/paymentSettingScreen.dart';
import 'package:blinkit/screens/walletScreen.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontSize: Dimensions.fontSize(14)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'My account',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: Dimensions.height(10),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Log in or sign up to your complete profile'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Container(
                    margin:
                        EdgeInsets.symmetric(vertical: Dimensions.margin(10)),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(5)),
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: const Text(textAlign: TextAlign.center, 'Continue'),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: const Color(0xffF0F8FF),
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.padding(40),
                  vertical: Dimensions.padding(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WalletScreen(),
                          ));
                    },
                    child: const Column(
                      children: [
                        Icon(Icons.wallet),
                        Text('Wallet'),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChatuiScreeen(),
                          ));
                    },
                    child: const Column(
                      children: [
                        Icon(Icons.wallet),
                        Text('Support'),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PaymentsettingScreen(),
                          ));
                    },
                    child: const Column(
                      children: [
                        Icon(Icons.wallet),
                        Text('Payment'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height(10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 0.1),
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.loop),
                      SizedBox(
                        width: Dimensions.width(10),
                      ),
                      const Text('App update available'),
                    ],
                  ),
                  Container(
                      color: Colors.grey.shade100,
                      child: const Text('v16.3.3')),
                  const Icon(Icons.arrow_right_outlined)
                ],
              ),
            ),
          ),
          SizedBox(
            height: Dimensions.height(10),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.padding(20),
              vertical: Dimensions.padding(10),
            ),
            child: const Text('YOUR INFORMATION'),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OrderScreen()));
            },
            child: const ListTile(
              leading: Icon(Icons.book),
              title: Text('Your orders'),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Addressscreen(),
                  ));
            },
            leading: const Icon(Icons.book),
            title: const Text('Address Book'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Collectedcoupons(),
                  ));
            },
            leading: const Icon(Icons.book),
            title: const Text('Collected Coupon'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.padding(15),
              vertical: Dimensions.padding(10),
            ),
            child: const Text('OTHER INFORMATION'),
          ),
          ListTile(
            onTap: () {
              shareContent();
            },
            leading: const Icon(Icons.book),
            title: const Text('Share the app'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutUsScreen(),
                  ));
            },
            leading: const Icon(Icons.book),
            title: const Text('About us'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
          ),
          ListTile(
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const CustomModal();
                },
              );
            },
            leading: const Icon(Icons.lock),
            title: const Text('Get Feeding india receipt'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AccountPrivacyScreen(),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.book),
              title: Text('Account privacy'),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Notificationpreferences(),
                  ));
            },
            leading: const Icon(Icons.notifications),
            title: const Text('Notification preferences'),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 15,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
                (route) => false,
              );
            },
            child: const ListTile(
              leading: Icon(Icons.book),
              title: Text('Logout'),
            ),
          ),
        ]),
      ),
    );
  }

  void shareContent() {
    Share.share('Check out this awesome content!',
        subject: 'Look what I found!');
  }
}
