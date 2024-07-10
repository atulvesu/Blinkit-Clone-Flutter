import 'package:blinkit/style/const.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String name;
  final VoidCallback onPress;

  const ButtonWidget({
    super.key,
    required this.name,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        decoration: BoxDecoration(
            color: const Color(0xffFECD33),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: btnStyle2,
            ),
          ],
        ),
      ),
    );
  }
}
