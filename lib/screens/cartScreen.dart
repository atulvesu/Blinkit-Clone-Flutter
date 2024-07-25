// ignore_for_file: file_names, depend_on_referenced_packages, avoid_print
import 'package:blinkit/screens/orderPlacedDialog.dart';
import 'package:blinkit/widgets/ButtonWidget.dart';
import 'package:blinkit/widgets/customTextFormFieldWidget2.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:blinkit/style/const.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class CartScreen extends StatefulWidget {
  final List<dynamic> cartItems;
  final Map<int, bool> showCounter;
  final Map<int, int> productQuantities;

  const CartScreen({
    super.key,
    required this.cartItems,
    required this.showCounter,
    required this.productQuantities,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

enum ContainerOption { option20, option30, option50, option100 }

class _CartScreenState extends State<CartScreen> {
  static const int shippingCost = 10;
  bool check = false;
  late Razorpay _razorpay;

  ContainerOption? selectedOption;
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    _razorpay.clear();
    super.dispose();
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Handle payment success
    print("Payment successful: ${response.paymentId}");
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Handle payment error
    print("Payment failed: ${response.code} - ${response.message}");
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Handle external wallet selection
    print("External wallet selected: ${response.walletName}");
  }

  void openCheckout() {
    var options = {
      'key': 'testing',
      'amount': 1000,
      'name': 'Blinkit',
      'description': 'Payment for your shopping',
      'prefill': {'contact': '9123456789', 'email': 'example@domain.com'},
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      print(e.toString());
    }
  }

  void onContainerTap(ContainerOption option) {
    setState(() {
      selectedOption = option;
    });
  }

  void _removeItem(product) {
    setState(() {
      widget.cartItems.remove(product);
      widget.showCounter[product.id] = false;
      widget.productQuantities.remove(product.id);
    });
  }

  void incrementQuantity(product) {
    setState(() {
      widget.productQuantities[product.id] =
          (widget.productQuantities[product.id] ?? 0) + 1;
    });
  }

  void decrementQuantity(product) {
    setState(() {
      if (widget.productQuantities[product.id]! > 1) {
        widget.productQuantities[product.id] =
            widget.productQuantities[product.id]! - 1;
      } else {
        _removeItem(product);
      }
    });
  }

  double? _calculateTotalBill() {
    double total = 0;
    for (var product in widget.cartItems) {
      total += product.price * (widget.productQuantities[product.id] ?? 1);
    }
    return total;
  }

  double? _calculateTotalBill2() {
    double totalBill = _calculateTotalBill()!;
    double abc = totalBill + shippingCost;
    return abc;
  }

  @override
  Widget build(BuildContext context) {
    final coupon = TextEditingController();
    double? totalBill = _calculateTotalBill();
    double? finalBill = _calculateTotalBill2();

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
      body: widget.cartItems.isEmpty
          ? const Center(
              child: Text('Cart is Empty'),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 5),
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
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ListTile(
                                          leading: Image.network(
                                            product.img,
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.cover,
                                          ),
                                          title: Text(product.name,
                                              style: bstSellerStyle),
                                          subtitle: Text(
                                            '₹ ${product.price.toString()}',
                                            style: bstSeller2Style,
                                          ),
                                          // trailing: InkWell(
                                          //   onTap: () {
                                          //     _removeItem(product);
                                          //   },
                                          //   child: const Icon(
                                          //     Icons.delete,
                                          //     color: Colors.red,
                                          //   ),
                                          // ),
                                          trailing: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 4,
                                                      horizontal: 5),
                                              decoration: BoxDecoration(
                                                color: Colors.teal,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () =>
                                                        decrementQuantity(
                                                            product),
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10),
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.teal,
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: const Text(
                                                        '-',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    widget.productQuantities[
                                                                product.id]
                                                            ?.toString() ??
                                                        '0',
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () =>
                                                        incrementQuantity(
                                                            product),
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10),
                                                      decoration:
                                                          const BoxDecoration(
                                                        color: Colors.teal,
                                                        shape:
                                                            BoxShape.rectangle,
                                                      ),
                                                      child: const Text(
                                                        '+',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                                const SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'Coupon Code',
                                    style: apptxt3,
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.height(10),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
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
                                      ButtonWidget(
                                          name: 'Apply', onPress: () {})
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: Dimensions.height(10),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          Text('₹ ${totalBill.toString()}'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Shipping Costs'),
                                          Text('₹ ${shippingCost.toString()}'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text('Total Bill:'),
                                          Text('₹ ${finalBill.toString()}'),
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
                        Card(
                          elevation: 2,
                          color: Colors.white,
                          child: ListTile(
                            leading: const Icon(Icons.accessibility_outlined),
                            title: Text(
                              'Feeding India donation ₹1',
                              style: cartStyle,
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'Working towards a mainutrition free india.Feeding india is a not-a-profit organisation, working to solve hunger, maninutrition, and food wastage in India.',
                                style: cartStyle2,
                              ),
                            ),
                            trailing: Checkbox(
                                activeColor: Colors.green,
                                value: check,
                                onChanged: (newValue) {
                                  setState(() {
                                    check = newValue!;
                                  });
                                }),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 0),
                            child: Card(
                              elevation: 2,
                              color: Colors.white,
                              child: ListTile(
                                title: Text(
                                  'Tip your delivery partner',
                                  style: cartStyle,
                                ),
                                subtitle: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Your kindness means a lot! 100% of your tip will go directly to your delivery partner.',
                                          style: cartStyle2,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              // Container(
                                              //   padding: EdgeInsets.all(5),
                                              //   decoration: BoxDecoration(
                                              //     border: Border.all(
                                              //       width: 0.2,
                                              //     ),
                                              //     borderRadius:
                                              //         BorderRadius.circular(5),
                                              //   ),
                                              //   child: Row(
                                              //     children: [
                                              //       Icon(Icons.emoji_emotions),
                                              //       Text(' ₹20')
                                              //     ],
                                              //   ),
                                              // ),
                                              // Container(
                                              //   padding: EdgeInsets.all(5),
                                              //   decoration: BoxDecoration(
                                              //     border: Border.all(
                                              //       width: 0.2,
                                              //     ),
                                              //     borderRadius:
                                              //         BorderRadius.circular(5),
                                              //   ),
                                              //   child: Row(
                                              //     children: [
                                              //       Icon(Icons.emoji_emotions),
                                              //       Text(' ₹30')
                                              //     ],
                                              //   ),
                                              // ),
                                              // Container(
                                              //   padding: EdgeInsets.all(5),
                                              //   decoration: BoxDecoration(
                                              //     border: Border.all(
                                              //       width: 0.2,
                                              //     ),
                                              //     borderRadius:
                                              //         BorderRadius.circular(5),
                                              //   ),
                                              //   child: Row(
                                              //     children: [
                                              //       Icon(Icons.emoji_emotions),
                                              //       Text(' ₹50')
                                              //     ],
                                              //   ),
                                              // ),
                                              // Container(
                                              //   padding: EdgeInsets.all(5),
                                              //   decoration: BoxDecoration(
                                              //     border: Border.all(
                                              //       width: 0.2,
                                              //     ),
                                              //     borderRadius:
                                              //         BorderRadius.circular(5),
                                              //   ),
                                              //   child: Row(
                                              //     children: [
                                              //       Icon(Icons.emoji_emotions),
                                              //       Text(' ₹100')
                                              //     ],
                                              //   ),
                                              // ),
                                              buildContainer(
                                                  ContainerOption.option20,
                                                  '₹20'),
                                              buildContainer(
                                                  ContainerOption.option30,
                                                  '₹30'),
                                              buildContainer(
                                                  ContainerOption.option50,
                                                  '₹50'),
                                              buildContainer(
                                                  ContainerOption.option100,
                                                  '₹100'),
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            )),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 0),
                            child: Card(
                              elevation: 2,
                              color: Colors.white,
                              child: ListTile(
                                title: Text(
                                  'Cancellation Policy',
                                  style: cartStyle,
                                ),
                                subtitle: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    'Order can\'t be cancelled once packed for delivery. In case of unexpected delays, a refund will be provided, if applicable.',
                                    style: cartStyle2,
                                  ),
                                ),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              openCheckout();
                            },
                            child: const Text('RazorPay'))
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    'Select address',
                                    style: card5,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return OrderPlacedDialog();
                                      },
                                    );
                                  },
                                  child: Card(
                                    color: Colors.white,
                                    child: ListTile(
                                      leading: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 5),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: const Icon(Icons.home)),
                                      title: const Text('Home'),
                                      subtitle: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Ground, B-121, Gautam Nagar, Noida'),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ));
                      },
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
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

  Widget buildContainer(ContainerOption option, String text) {
    bool isSelected = selectedOption == option;
    return GestureDetector(
      onTap: () => onContainerTap(option),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green : Colors.white,
          border: Border.all(
            width: 0.2,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Icon(
              Icons.emoji_emotions,
              color: isSelected ? Colors.white : Colors.black,
            ),
            Text(' $text',
                style:
                    TextStyle(color: isSelected ? Colors.white : Colors.black)),
          ],
        ),
      ),
    );
  }
}
