// ignore_for_file: file_names
import 'package:flutter/material.dart';

class FoodRepScreen extends StatefulWidget {
  const FoodRepScreen({super.key});

  @override
  State<FoodRepScreen> createState() => _FoodRepScreenState();
}

class _FoodRepScreenState extends State<FoodRepScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  'https://www.shutterstock.com/image-photo/chilli-paneer-dry-made-using-600nw-2093440627.jpg',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.share),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Cilantro Paneer',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Cilantro Paneer is a delightful Indian dish where golden-brown cubes of paneer are cooked with a flavorful blend of spices and fresh cilantro. In a heated pan, cumin seeds crackle in oil before onions, ginger-garlic paste, and green chilies are sautéed to aromatic perfection. Turmeric, red chili powder, and salt join in, infusing the dish with warmth and spice. Tomato puree adds a tangy richness, simmering until the sauce thickens and coats the paneer cubes. Chopped cilantro leaves are stirred in, lending a fresh, herbaceous note. A sprinkle of garam masala enhances the dish\'s complexity, marrying all flavors together. Serve this fragrant Cilantro Paneer hot, garnished with more cilantro leaves and perhaps a squeeze of lemon, alongside naan or steamed rice for a truly satisfying meal..Enjoy your delicious Cilantro Paneer! Adjust the spice levels according to your preference.Serve hot with roti, naan, or rice. Optionally, serve with lemon wedges for extra tanginess.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.1),
                    bottom: BorderSide(width: 0.1),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '30 Min',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Cook Time',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '4',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Serving',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.receipt_outlined),
                        Text(
                          'Recipe',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.heart_broken),
                        Text(
                          '650 kCal',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           Container(
            //               padding: EdgeInsets.all(5),
            //               decoration: BoxDecoration(
            //                 color: Colors.amber.shade100,
            //                 borderRadius: BorderRadius.circular(5),
            //               ),
            //               child: Icon(Icons.speaker)),
            //           SizedBox(
            //             width: 10,
            //           ),
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 'Send a Hindi audio recipe',
            //                 style: TextStyle(
            //                   fontSize: 12,
            //                 ),
            //               ),
            //               Text(
            //                   'to your chef of the day and do thank them for the meal.',
            //                   style: TextStyle(
            //                     fontSize: 12,
            //                   )),
            //             ],
            //           ),
            //         ],
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Container(
            //           padding: EdgeInsets.all(5),
            //           decoration: BoxDecoration(
            //             color: Colors.green.shade400,
            //             borderRadius: BorderRadius.circular(5),
            //           ),
            //           child: Row(
            //             children: [
            //               Text(
            //                 'Send',
            //                 style: TextStyle(color: Colors.white, fontSize: 14),
            //               ),
            //             ],
            //           )),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
