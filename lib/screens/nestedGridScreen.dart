import 'package:blinkit/screens/cartScreen.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:blinkit/style/const.dart';

class NestedGridScreen extends StatefulWidget {
  final dynamic model;

  NestedGridScreen({Key? key, required this.model}) : super(key: key);

  @override
  _NestedGridScreenState createState() => _NestedGridScreenState();
}

class _NestedGridScreenState extends State<NestedGridScreen> {
  List<dynamic> cartItems = [];

  void addToCart(product) {
    setState(() {
      cartItems.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.model.title,
          style: TextStyle(fontSize: Dimensions.fontSize(12)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                    itemCount: widget.model.subData.length,
                    itemBuilder: (context, index) {
                      final product = widget.model.subData[index];
                      return Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.green, width: 3),
                          ),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                product.img,
                                width: Dimensions.width(50),
                                height: Dimensions.height(50),
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.error),
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  (loadingProgress
                                                          .expectedTotalBytes ??
                                                      1)
                                              : null,
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: Dimensions.height(5)),
                            Text(
                              widget.model.title,
                              textAlign: TextAlign.center,
                              style: bstSeller2Style,
                            ),
                            SizedBox(height: Dimensions.height(5)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(238, 238, 238, 1),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: GridView.builder(
                            itemCount: widget.model.subData.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.7,
                              mainAxisSpacing: 5,
                            ),
                            itemBuilder: (context, index) {
                              final product = widget.model.subData[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.network(
                                          product.img,
                                          width: double.infinity,
                                          height: Dimensions.height(110),
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  const Icon(Icons.error),
                                          loadingBuilder: (context, child,
                                              loadingProgress) {
                                            if (loadingProgress == null)
                                              return child;
                                            return Center(
                                              child: CircularProgressIndicator(
                                                value: loadingProgress
                                                            .expectedTotalBytes !=
                                                        null
                                                    ? loadingProgress
                                                            .cumulativeBytesLoaded /
                                                        (loadingProgress
                                                                .expectedTotalBytes ??
                                                            1)
                                                    : null,
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      SizedBox(height: Dimensions.height(5)),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: Dimensions.padding(10),
                                            horizontal: Dimensions.padding(10)),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(
                                                  Dimensions.padding(2)),
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade100,
                                                borderRadius:
                                                    BorderRadius.circular(2),
                                              ),
                                              child: Text(
                                                '11 MINS',
                                                style: apptxt1,
                                              ),
                                            ),
                                            SizedBox(
                                                height: Dimensions.height(10)),
                                            Text(
                                              product.name,
                                              style: bstSellerStyle,
                                            ),
                                            SizedBox(
                                                height: Dimensions.height(10)),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                      '₹ ${product.price.toString()}',
                                                      style: bstSeller2Style,
                                                    ),
                                                    Text(
                                                      '₹ ${product.oldPrice}',
                                                      style: oldPrice,
                                                    ),
                                                  ],
                                                ),
                                                GestureDetector(
                                                  onTap: () =>
                                                      addToCart(product),
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 10,
                                                        vertical: 2),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color: Colors.green),
                                                    ),
                                                    child: const Text('Add'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  textAlign: TextAlign.center,
                  '${cartItems.length} ITEMS',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CartScreen(cartItems: cartItems),
                        ),
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.green,
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
