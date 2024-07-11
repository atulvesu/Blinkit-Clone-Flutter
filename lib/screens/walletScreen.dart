import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffedb506),
      appBar: AppBar(
        title: Text(
          'Wallet details',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        children: [
          Image.network(
              'https://images.unsplash.com/photo-1517849845537-4d257902454a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGRvZyUyMGFuZCUyMGh1bWFuJTIwY2FydG9vbiUyMHBuZ3xlbnwwfHwwfHx8MA%3D%3D'),
          Text(
            'No balance',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
