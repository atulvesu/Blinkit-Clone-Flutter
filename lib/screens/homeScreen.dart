import 'dart:math';
import 'package:blinkit/model/grocery_model.dart';
import 'package:blinkit/screens/custom_grid.dart';
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
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                  Container(
                    height: 230,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset('assets/images/Untitled.png'),
                            ),
                            SizedBox(
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
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
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
                  )
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
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      isDense: false,
                      hintText: 'Search something...',
                      hintStyle: hinttxtStyle,
                      border: OutlineInputBorder(
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

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: false,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      expandedHeight: 100,
      collapsedHeight: 90,
      flexibleSpace: const FlexibleSpaceBar(
        titlePadding: EdgeInsets.symmetric(horizontal: 10),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Delivery in ',
              style: apptxt1,
            ),
            SizedBox(height: 4),
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
                Icon(Icons.arrow_drop_down),
              ],
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: IconButton(
            onPressed: () {},
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
