// ignore_for_file: file_names, camel_case_types
import 'package:blinkit/style/const.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Your Orders',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        ),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 2,
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.teal.shade100,
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: const Icon(Icons.check)),
                              SizedBox(
                                width: Dimensions.width(15),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Arrived in 14 minutes',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('₹309 · 28 Jun, 9:59 am',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_forward,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 0.1,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Expanded(child: con()),
                          Expanded(child: con()),
                          Expanded(child: con()),
                          Expanded(child: con()),
                          Expanded(child: con2()),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: const BoxDecoration(
                          border: Border(top: BorderSide(width: 0.1))),
                      child: const Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Center(
                                child: Text(
                              textAlign: TextAlign.center,
                              "Reorder",
                              style: orderStyle,
                            )),
                          ),
                          Expanded(
                              flex: 1,
                              child: VerticalDivider(
                                thickness: 0.2,
                                color: Colors.grey,
                              )),
                          Expanded(
                            flex: 2,
                            child: Text(
                              textAlign: TextAlign.center,
                              'Rate Order',
                              style: orderStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class con extends StatelessWidget {
  const con({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          'https://images.unsplash.com/photo-1718931216623-ceabe5660711?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwyMnx8fGVufDB8fHx8fA%3D%3D',
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class con2 extends StatelessWidget {
  const con2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Colors.grey,
          height: 50,
          width: 50,
          child: const Center(
            child: Text('+4'),
          ),
        ),
      ),
    );
  }
}
