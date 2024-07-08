import 'package:blinkit/model/grocery_model.dart';
import 'package:blinkit/screens/nestedGridScreen.dart';
import 'package:blinkit/style/const.dart';
import 'package:flutter/material.dart';

class CustomGrid extends StatefulWidget {
  final String title;
  final List<GroceryModel> items;

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
      padding: const EdgeInsetsDirectional.only(top: 10, start: 10, end: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style: bstSellerStyle),
          SizedBox(height: 10),
          Container(
            height: 350,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                            NestedGridScreen(groceryModel: groceryModel),
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
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 5),
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
