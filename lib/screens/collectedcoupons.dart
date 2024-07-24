import 'package:blinkit/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';

class Collectedcoupons extends StatefulWidget {
  const Collectedcoupons({super.key});

  @override
  State<Collectedcoupons> createState() => _CollectedcouponsState();
}

class _CollectedcouponsState extends State<Collectedcoupons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          title: 'Collected coupons',
          onPress: () {
            Navigator.pop(context);
          }),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('No Coupons Available')),
        ],
      ),
    );
  }
}
