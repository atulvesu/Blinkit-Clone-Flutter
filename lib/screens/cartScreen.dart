// ignore_for_file: file_names, depend_on_referenced_packages, avoid_print

import 'package:blinkit/screens/orderPlacedDialog.dart';
import 'package:blinkit/widgets/ButtonWidget.dart';
import 'package:blinkit/widgets/customTextFormFieldWidget2.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:blinkit/style/const.dart';
import 'package:video_player/video_player.dart';

class CartScreen extends StatefulWidget {
  final List<dynamic> cartItems;

  const CartScreen({super.key, required this.cartItems});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('assets/images/Payment Success.mp4')
          ..initialize().then((_) {
            setState(() {});
            _controller.play();
          });
  }

  static const int shippingCost = 10;
  void _removeItem(product) {
    setState(() {
      widget.cartItems.remove(product);
    });
  }

  int? _calculateTotalBill() {
    int? total = 0;
    for (var product in widget.cartItems) {
      total = (total! + product.price) as int?;
      print(total);
    }

    return total;
  }

  int? _calculateTotalBill2() {
    int? totalBill = _calculateTotalBill();
    int abc = totalBill! + shippingCost;
    return abc;
  }

  @override
  Widget build(BuildContext context) {
    final coupon = TextEditingController();
    int? totalBill = _calculateTotalBill();
    int? finalBill = _calculateTotalBill2();
    // bool isCartEmpty = widget.cartItems.isEmpty;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff16BE47),
        title: Text(
          'Cart',
          style: TextStyle(
              fontSize: Dimensions.fontSize(14),
              color: Colors.white,
              fontWeight: FontWeight.w400),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Card(
                      elevation: 4,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(5)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: const Icon(
                                Icons.access_time_sharp,
                                color: Colors.green,
                              ),
                            ),
                            title: Text(
                              'Delivery in 12 minutes',
                              style: cartStyle,
                            ),
                            subtitle: Text(
                              'shipment of total items',
                              style: cartStyle2,
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.cartItems.length,
                            itemBuilder: (context, index) {
                              final product = widget.cartItems[index];
                              return ListTile(
                                leading: Image.network(
                                  product.img,
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                                title:
                                    Text(product.name, style: bstSellerStyle),
                                subtitle: Text('₹ ${product.price.toString()}',
                                    style: bstSeller2Style),
                                trailing: InkWell(
                                  onTap: () {
                                    _removeItem(product);
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Coupon Code',
                              style: apptxt3,
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height(10),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomTextFormFieldWidget2(
                                    hintText: 'Enter Coupon Code',
                                    controller: coupon,
                                    validator: (value) => null,
                                  ),
                                ),
                                SizedBox(
                                  width: Dimensions.width(5),
                                ),
                                ButtonWidget(name: 'Apply', onPress: () {})
                              ],
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height(10),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Bill Details'),
                                SizedBox(
                                  height: Dimensions.height(10),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Item Subtotal'),
                                    Text(totalBill.toString()),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Shipping Costs'),
                                    Text(shippingCost.toString()),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Total Bill:'),
                                    Text(finalBill.toString()),
                                  ],
                                ),
                                SizedBox(
                                  height: Dimensions.height(10),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return OrderPlacedDialog();
                },
              );
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                  color: const Color(0xff16BE47),
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                textAlign: TextAlign.center,
                'Choose address at the next step',
                style: btn2Style,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
