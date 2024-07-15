// ignore: unused_import
// ignore_for_file: use_super_parameters

// ignore: unused_import
import 'package:blinkit/model/grocery_model.dart';
import 'package:blinkit/screens/nestedGridScreen.dart';
import 'package:blinkit/style/const.dart';
import 'package:blinkit/style/dimension.dart';
import 'package:flutter/material.dart';

class CustomGrid extends StatefulWidget {
  final String title;
  final List<dynamic> items;

  const CustomGrid({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          top: Dimensions.padding(10),
          start: Dimensions.padding(10),
          end: Dimensions.padding(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: bstSellerStyle),
          SizedBox(height: Dimensions.height(10)),
          Container(
            height: Dimensions.height(260),
            padding: EdgeInsets.symmetric(vertical: Dimensions.padding(10)),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                final groceryModel = widget.items[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NestedGridScreen(model: groceryModel),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          groceryModel.img,
                          width: double.infinity,
                          height: Dimensions.height(80),
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              const Icon(Icons.error),
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        (loadingProgress.expectedTotalBytes ??
                                            1)
                                    : null,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(height: Dimensions.height(2)),
                      Expanded(
                        child: Text(groceryModel.title,
                            textAlign: TextAlign.center,
                            style: bstSeller2Style),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
