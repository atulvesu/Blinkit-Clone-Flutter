// ignore_for_file: file_names

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
                    const ListTile(
                      title: Text(
                        "Cards",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.card_travel_outlined)),
                      title: const Text(
                        'Add credit or debit cards',
                        style: card2,
                      ),
                      trailing: const Text(
                        "ADD",
                        style: card3,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.abc_outlined)),
                      title: const Text(
                        'Pluxee',
                        style: card2,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Pay by any upi app
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        "PAY BY ANY UPI APP",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.ac_unit_sharp)),
                      title: const Text(
                        'Google Pay UPI',
                        style: card2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.abc_outlined)),
                      title: const Text(
                        'PhonePe UPI',
                        style: card2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.abc_outlined)),
                      title: const Text(
                        'Patym UPI',
                        style: card2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.abc_outlined)),
                      title: const Text(
                        'Make My Trip UPI',
                        style: card2,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // wallets
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        "Wallets",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.ac_unit_sharp)),
                      title: const Text(
                        'Amazon Pay Balance',
                        style: card2,
                      ),
                      subtitle: const Text(
                        'Link your Amazon Pay Balance wallet',
                        style: card4,
                      ),
                      trailing: const Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.ac_unit_sharp)),
                      title: const Text(
                        'Mobikwik',
                        style: card2,
                      ),
                      subtitle: const Text(
                        'Link your Mobikwik wallet',
                        style: card4,
                      ),
                      trailing: const Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.ac_unit_sharp)),
                      title: const Text(
                        'Paytm',
                        style: card2,
                      ),
                      subtitle: const Text(
                        'Link your paytm wallet',
                        style: card4,
                      ),
                      trailing: const Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
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
                    const ListTile(
                      title: Text(
                        "Pay later",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.ac_unit_sharp)),
                      title: const Text(
                        'Simpl',
                        style: card2,
                      ),
                      subtitle: const Text(
                        'Link your Simpl account',
                        style: card4,
                      ),
                      trailing: const Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 0.4,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.abc_outlined)),
                      title: const Text(
                        'LazyPay',
                        style: card2,
                      ),
                      subtitle: const Text(
                        'Link your LazyPay account',
                        style: card4,
                      ),
                      trailing: const Text(
                        'LINK',
                        style: card3,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 2,
                child: Column(
                  children: [
                    const ListTile(
                      title: Text(
                        "Pay later",
                        style: card1,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 5),
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.2),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.maps_home_work_sharp)),
                      title: const Text(
                        'Netbanking',
                        style: card2,
                      ),
                      trailing: const Text(
                        'ADD',
                        style: card3,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
