import 'package:flutter/material.dart';
import 'package:blinkit/style/const.dart';
import 'package:blinkit/model/grocery_model.dart';

class NestedGridScreen extends StatelessWidget {
  final GroceryModel groceryModel;

  const NestedGridScreen({Key? key, required this.groceryModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          groceryModel.title,
          style: TextStyle(fontSize: 12),
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
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      final product = groceryModel.subData[index];
                      return Container(
                        decoration: BoxDecoration(
                            border: Border(
                                right:
                                    BorderSide(color: Colors.green, width: 3))),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network(
                                product.img,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                                textAlign: TextAlign.center,
                                groceryModel.title,
                                style: bstSeller2Style),
                            const SizedBox(height: 5),
                          ],
                        ),
                      );
                    },
                  ),
                ),

                // Grid -----------------2-------------------//////////
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(238, 238, 238, 1),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: GridView.builder(
                            itemCount: groceryModel.subData.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.6,
                              // crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                            ),
                            itemBuilder: (context, index) {
                              final product = groceryModel.subData[index];
                              return Padding(
                                padding: EdgeInsets.symmetric(
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
                                        //---------- product image ------------//
                                        child: Image.network(
                                          product.img,
                                          width: double.infinity,
                                          height: 120,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      // time
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                                padding: EdgeInsets.all(2),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.shade100,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2)),
                                                child: Text(
                                                  '11 MINS',
                                                  style: apptxt1,
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              product.name,
                                              style: bstSellerStyle,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
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
                                                        style: oldPrice),
                                                  ],
                                                ),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 2),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color: Colors.green)),
                                                  child: Text('Add'),
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
          // Container(
          //   padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          //   child: Row(
          //     children: [
          //       Expanded(
          //           child: Text(
          //         textAlign: TextAlign.center,
          //         '2 ITEMS',
          //         style: TextStyle(
          //           fontSize: 14,
          //         ),
          //       )),
          //       Expanded(
          //         child: InkWell(
          //           onTap: () {},
          //           child: Container(
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(5),
          //                 color: Colors.green,
          //               ),
          //               padding:
          //                   EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          //               child: Text(
          //                 textAlign: TextAlign.center,
          //                 'Next',
          //                 style: TextStyle(color: Colors.white, fontSize: 14),
          //               )),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
