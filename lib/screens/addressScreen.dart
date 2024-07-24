// ignore_for_file: file_names

import 'package:blinkit/style/const.dart';
import 'package:blinkit/widgets/appBarWidget.dart';
import 'package:flutter/material.dart';

class Addressscreen extends StatefulWidget {
  const Addressscreen({super.key});

  @override
  State<Addressscreen> createState() => _AddressscreenState();
}

class _AddressscreenState extends State<Addressscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          title: 'My address',
          onPress: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.white,
                elevation: 2,
                child: ListTile(
                  leading: const Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Add new address",
                    style: seeAllbtn,
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2,
                child: ListTile(
                  title: const Text(
                    'Import your address from Zomato',
                    style: card6,
                  ),
                  subtitle: const Text(
                    'Get your saved addresses in a single click',
                    style: textFormFieldStyle,
                  ),
                  leading: const Icon(Icons.abc_outlined),
                  trailing: Text(
                    'Import',
                    style: seeAllbtn,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Your saved address",
                  style: card5,
                ),
              ),
              ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: ListTile(
                      leading: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(Icons.home)),
                      title: const Text('Home'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Ground, B-121, Gautam Nagar, Noida'),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.green.shade100,
                                child: const Icon(
                                  Icons.more_horiz,
                                  size: 15,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.green.shade100,
                                child: const Icon(
                                  Icons.share,
                                  size: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
