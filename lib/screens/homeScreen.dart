// ignore_for_file: file_names, use_super_parameters
import 'dart:math';
import 'package:blinkit/model/bath_model.dart';
import 'package:blinkit/model/grocery_model.dart';
import 'package:blinkit/model/home_model.dart';
import 'package:blinkit/model/snacks_model.dart';
import 'package:blinkit/screens/custom_grid.dart';
import 'package:blinkit/screens/homeScreen2.dart';
import 'package:blinkit/screens/profileScreen.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:blinkit/style/const.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final urlImages = [
    "https://images.unsplash.com/photo-1526470498-9ae73c665de8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8R1JPQ0VSWSUyMGhvcml6b250YWwlMjBpbWFnZXxlbnwwfHwwfHx8MA%3D%3D",
    "https://media.istockphoto.com/id/1015858612/photo/supermarket-interior-with-shelves-full-of-various-products.webp?b=1&s=170667a&w=0&k=20&c=oGH_HSothrfTk1uvS7PTCAEjhY9I1Y94rpj8wtRPOqU=",
    "https://media.istockphoto.com/id/1213535077/photo/happy-family-shopping-for-groceries-at-the-supermarket.webp?b=1&s=170667a&w=0&k=20&c=nbAlMbVp9FwjLTbQSVRhbzU7SAO4DZovmeAeaSiNkVo=",
    "https://images.unsplash.com/photo-1695654390723-479197a8c4a3?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fEdST0NFUlklMjBob3Jpem9udGFsJTIwaW1hZ2V8ZW58MHx8MHx8fDA%3D",
  ];
  final CarouselController carouselController = CarouselController();

  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Homescreen2(),
              ));
        },
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
                  // Padding(
                  //   padding: EdgeInsets.symmetric(
                  //       horizontal: Dimensions.padding(16)),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text('Bestsellers', style: bstSellerStyle),
                  //       TextButton(
                  //         onPressed: () {},
                  //         child: Text('See all', style: bstSellerStyle),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: Dimensions.height(230),
                  //   child: ListView.builder(
                  //     shrinkWrap: true,
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: 6,
                  //     itemBuilder: (context, index) => Container(
                  //       decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(5)),
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 2, vertical: 5),
                  //       child: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Expanded(
                  //             child: Image.asset('assets/images/Untitled.png'),
                  //           ),
                  //           const SizedBox(
                  //             height: 5,
                  //           ),
                  //           Text(
                  //             'Chips & Crips',
                  //             style: bstSeller2Style,
                  //           ),
                  //           Text(
                  //             '13 products',
                  //             style: bstSeller2Style,
                  //           ),
                  //           const SizedBox(
                  //             height: 10,
                  //           ),
                  //           Container(
                  //             padding: const EdgeInsets.symmetric(
                  //                 horizontal: 20, vertical: 2),
                  //             decoration: BoxDecoration(
                  //                 borderRadius: BorderRadius.circular(5),
                  //                 border:
                  //                     Border.all(color: Colors.green.shade200)),
                  //             child: Text(
                  //               'See all',
                  //               style: seeAllbtn,
                  //             ),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Stack(
                    children: [
                      SizedBox(
                        height: 150,
                        child: CarouselSlider.builder(
                          itemCount: urlImages.length,
                          itemBuilder: (context, index, realIndex) {
                            final urlImage = urlImages[index];
                            return Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              width: double.maxFinite,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  urlImage,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 10),
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 1000),
                            height: 200,
                            aspectRatio: 16 / 9,
                            enlargeCenterPage: true,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                _current = index;
                              });
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: AnimatedSmoothIndicator(
                            activeIndex: _current,
                            count: urlImages.length,
                            effect: const WormEffect(
                              dotHeight: 8,
                              dotWidth: 8,
                              activeDotColor: Colors.green,
                              dotColor: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
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
