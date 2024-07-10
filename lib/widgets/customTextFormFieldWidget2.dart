import 'package:blinkit/style/const.dart';
import 'package:flutter/material.dart';

class CustomTextFormFieldWidget2 extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?) validator;

  const CustomTextFormFieldWidget2(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          style: const TextStyle(color: Colors.black, fontSize: 12),
          controller: controller,
          decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              hintText: hintText,
              hintStyle: textFormFieldStyle,
              border: const OutlineInputBorder()),
          validator: validator,
        ),
      ],
    );
  }
}
