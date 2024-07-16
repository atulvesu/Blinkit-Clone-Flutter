// ignore: unused_import
// ignore_for_file: file_names, library_private_types_in_public_api
import 'package:blinkit/screens/foodRepScreen.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/screens/cartScreen.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:blinkit/style/const.dart';

class NestedGridScreen extends StatefulWidget {
  final dynamic model;

  const NestedGridScreen({super.key, required this.model});

  @override
  _NestedGridScreenState createState() => _NestedGridScreenState();
}

class _NestedGridScreenState extends State<NestedGridScreen> {
  List<dynamic> cartItems = [];
  Map<int, int> productQuantities = {};

  void addToCart(product) {
    setState(() {
      cartItems.add(product);
    });
  }

  void showProductDetails(product) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            color: const Color(0xff00FFFFFF),
            child: Column(
              children: [
                // Icon(Icons.cancel_outlined),
                // SizedBox(
                //   height: 5,
                // ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xff00FFFFFF),
                  ),
                  child: Column(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              child: Image.network(
                                product.img,
                                height: Dimensions.height(200),
                                width: double.infinity,
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
                          ),
                          SizedBox(height: Dimensions.height(10)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              product.name,
                              style: bstSellerStyle,
                            ),
                          ),
                          SizedBox(height: Dimensions.height(10)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Price: ₹${product.price.toString()}',
                              style: bstSeller2Style,
                            ),
                          ),
                          SizedBox(height: Dimensions.height(10)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Old Price: ₹${product.oldPrice}',
                              style: oldPrice,
                            ),
                          ),
                          SizedBox(height: Dimensions.height(10)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Description: ${product.description}',
                              style:
                                  TextStyle(fontSize: Dimensions.fontSize(12)),
                            ),
                          ),
                          SizedBox(height: Dimensions.height(10)),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: InkWell(
                              onTap: () {
                                addToCart(product);
                                Navigator.pop(context);
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.teal),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  width: double.infinity,
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Add to cart',
                                    style: TextStyle(
                                        fontSize: Dimensions.fontSize(12),
                                        color: Colors.white),
                                  )),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Online Recipes for you',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.height(120),
                            child: ListView.builder(
                              itemCount: 6,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const FoodRepScreen(),
                                          ));
                                    },
                                    child: Container(
                                      child: Column(
                                        children: [
                                          Image.network(
                                              'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fEZvb2R8ZW58MHx8MHx8fDA%3D',
                                              height: 60,
                                              width: 60,
                                              fit: BoxFit.cover),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Text('Lorem Ip')
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
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
    );
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
                              childAspectRatio: 1 / 1.9,
                              mainAxisSpacing: 5,
                            ),
                            itemBuilder: (context, index) {
                              final products = widget.model.subData[index];
                              return GestureDetector(
                                onTap: () => showProductDetails(products),
                                child: Padding(
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
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: Image.network(
                                            products.img,
                                            width: double.infinity,
                                            height: Dimensions.height(110),
                                            fit: BoxFit.cover,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    const Icon(Icons.error),
                                            loadingBuilder: (context, child,
                                                loadingProgress) {
                                              if (loadingProgress == null) {
                                                return child;
                                              }
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(
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
                                              horizontal:
                                                  Dimensions.padding(10)),
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
                                                  height:
                                                      Dimensions.height(10)),
                                              Text(
                                                products.name,
                                                style: bstSellerStyle,
                                              ),
                                              SizedBox(
                                                  height:
                                                      Dimensions.height(10)),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(
                                                        '₹ ${products.price.toString()}',
                                                        style: bstSeller2Style,
                                                      ),
                                                      Text(
                                                        '₹ ${products.oldPrice}',
                                                        style: oldPrice,
                                                      ),
                                                    ],
                                                  ),
                                                  GestureDetector(
                                                    onTap: () =>
                                                        addToCart(products),
                                                    child: Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10,
                                                          vertical: 2),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        border: Border.all(
                                                            color:
                                                                Colors.green),
                                                      ),
                                                      child: const Text('Add'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  GestureDetector(
                                                    onTap: () => setState(() {
                                                      productQuantities[products
                                                              .id] =
                                                          (productQuantities[
                                                                      products
                                                                          .id] ??
                                                                  0) +
                                                              1;
                                                    }),
                                                    child: Container(
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        decoration:
                                                            BoxDecoration(
                                                                color:
                                                                    Colors.teal,
                                                                shape: BoxShape
                                                                    .circle),
                                                        child: Text('+')),
                                                  ),
                                                  Text(productQuantities[
                                                              products.id]
                                                          ?.toString() ??
                                                      '0'),
                                                  GestureDetector(
                                                    onTap: () => setState(() {
                                                      if (productQuantities[
                                                                  products
                                                                      .id] !=
                                                              null &&
                                                          productQuantities[
                                                                  products
                                                                      .id]! >
                                                              0) {
                                                        productQuantities[
                                                                products.id] =
                                                            productQuantities[
                                                                    products
                                                                        .id]! -
                                                                1;
                                                      }
                                                    }),
                                                    child: Container(
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        decoration:
                                                            BoxDecoration(
                                                                color:
                                                                    Colors.teal,
                                                                shape: BoxShape
                                                                    .circle),
                                                        child: Text('-')),
                                                  ),
                                                ],
                                              )
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
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  textAlign: TextAlign.center,
                  '${cartItems.length} ITEMS',
                  style: const TextStyle(
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: const Text(
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
