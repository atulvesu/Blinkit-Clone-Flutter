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
                'Lorem Ipsum',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',
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
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Cook Time',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '30 Min',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Serving',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.receipt_outlined),
                        Text(
                          '30 Min',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.doorbell),
                        Text(
                          '30 Min',
                          style: TextStyle(fontSize: 15),
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
