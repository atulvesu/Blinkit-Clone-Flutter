// ignore_for_file: file_names, use_super_parameters

import 'dart:math';
import 'package:blinkit/model/bath_model.dart';
import 'package:blinkit/model/grocery_model.dart';
import 'package:blinkit/model/home_model.dart';
import 'package:blinkit/model/snacks_model.dart';
import 'package:blinkit/screens/custom_grid.dart';
import 'package:blinkit/screens/profileScreen.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/style/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.all(Dimensions.padding(4)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.category,
                color: Colors.white,
              ),
              SizedBox(
                height: Dimensions.height(2),
              ),
              Text(
                'CATEGORY',
                style: TextStyle(
                    fontSize: Dimensions.fontSize(6),
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: Container(
      //   height: MediaQuery.of(context).size.width * 0.5,
      //   width: MediaQuery.of(context).size.width * 0.14,
      //   child: FloatingActionButton(
      //     shape: CircleBorder(),
      //     onPressed: () {},
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Icon(
      //           Icons.category,
      //           color: Colors.white,
      //         ),
      //         Text(
      //           'CATEGORY',
      //           style: TextStyle(
      //               fontSize: 5,
      //               color: Colors.white,
      //               fontWeight: FontWeight.w500),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomAppBar(),
            const PersistentHeader(),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.padding(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Bestsellers', style: bstSellerStyle),
                        TextButton(
                          onPressed: () {},
                          child: Text('See all', style: bstSellerStyle),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height(230),
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 2, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset('assets/images/Untitled.png'),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Chips & Crips',
                              style: bstSeller2Style,
                            ),
                            Text(
                              '13 products',
                              style: bstSeller2Style,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(color: Colors.green.shade200)),
                              child: Text(
                                'See all',
                                style: seeAllbtn,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  CustomGrid(
                    items: GroceryModel.dummyData,
                    title: 'Grocery & Kitchen',
                  ),
                  CustomGrid(
                    title: 'Snacks & Drinks',
                    items: SnacksModel.dummyData,
                  ),
                  CustomGrid(
                      title: 'Beauty & Personal Care',
                      items: BathModel.dummyData),
                  CustomGrid(
                      title: 'HouseHold Essentials', items: HomeModel.dummyData)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// -----------------------Ends -------------------------------//

class PersistentHeader extends StatelessWidget {
  const PersistentHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 60.0,
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Icon(Icons.search),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      isDense: false,
                      hintText: 'Search something...',
                      hintStyle: hinttxtStyle,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const VerticalDivider(thickness: 0.8),
                InkWell(
                  onTap: () {},
                  child: const Icon(Icons.mic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      expandedHeight: 100,
      collapsedHeight: 90,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.symmetric(horizontal: 10),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Delivery in ',
              style: apptxt1,
            ),
            const SizedBox(height: 4),
            Text(
              '11 minutes',
              style: apptxt2,
            ),
            Row(
              children: [
                Text(
                  'E Block, Sector 8, Meerut Division',
                  style: apptxt3,
                ),
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ));
            },
            icon: const Icon(
              Icons.person_outline_sharp,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
