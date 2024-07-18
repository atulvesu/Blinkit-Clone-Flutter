import 'package:blinkit/style/const.dart';
import 'package:blinkit/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';

class PaymentsettingScreen extends StatefulWidget {
  const PaymentsettingScreen({super.key});

  @override
  State<PaymentsettingScreen> createState() => _PaymentsettingScreenState();
}

class _PaymentsettingScreenState extends State<PaymentsettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          title: "Payment setting",
          onPress: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              // cards
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Cards",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.card_travel_outlined)),
                      title: Text(
                        'Add credit or debit cards',
                        style: card2,
                      ),
                      trailing: Text(
                        "ADD",
                        style: card3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.abc_outlined)),
                      title: Text(
                        'Pluxee',
                        style: card2,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Pay by any upi app
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "PAY BY ANY UPI APP",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.ac_unit_sharp)),
                      title: Text(
                        'Google Pay UPI',
                        style: card2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.abc_outlined)),
                      title: Text(
                        'PhonePe UPI',
                        style: card2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.abc_outlined)),
                      title: Text(
                        'Patym UPI',
                        style: card2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.abc_outlined)),
                      title: Text(
                        'Make My Trip UPI',
                        style: card2,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // wallets
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Wallets",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.ac_unit_sharp)),
                      title: Text(
                        'Amazon Pay Balance',
                        style: card2,
                      ),
                      subtitle: Text(
                        'Link your Amazon Pay Balance wallet',
                        style: card4,
                      ),
                      trailing: Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.ac_unit_sharp)),
                      title: Text(
                        'Mobikwik',
                        style: card2,
                      ),
                      subtitle: Text(
                        'Link your Mobikwik wallet',
                        style: card4,
                      ),
                      trailing: Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.ac_unit_sharp)),
                      title: Text(
                        'Paytm',
                        style: card2,
                      ),
                      subtitle: Text(
                        'Link your paytm wallet',
                        style: card4,
                      ),
                      trailing: Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Pay later",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.ac_unit_sharp)),
                      title: Text(
                        'Simpl',
                        style: card2,
                      ),
                      subtitle: Text(
                        'Link your Simpl account',
                        style: card4,
                      ),
                      trailing: Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.abc_outlined)),
                      title: Text(
                        'LazyPay',
                        style: card2,
                      ),
                      subtitle: Text(
                        'Link your LazyPay account',
                        style: card4,
                      ),
                      trailing: Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Pay later",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Icon(Icons.maps_home_work_sharp)),
                      title: Text(
                        'Netbanking',
                        style: card2,
                      ),
                      trailing: Text(
                        'ADD',
                        style: card3,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
