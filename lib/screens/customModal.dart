import 'package:blinkit/style/const.dart';
import 'package:flutter/material.dart';

class CustomModal extends StatefulWidget {
  const CustomModal({super.key});

  @override
  State<CustomModal> createState() => _CustomModalState();
}

class _CustomModalState extends State<CustomModal> {
  final _formKey = GlobalKey<FormState>();
  final _panController = TextEditingController();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: double.infinity,
        child: Container(
          color: const Color(0xff00ffffff),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'Feeding India Donation Receipt',
                    style: card6,
                  ),
                ),
                Text(
                  'Please enter your details',
                  style: bstSellerStyle,
                ),
                Text(
                  'The details are collected on behalf of Feeding India for the purpose of issuance of Form 10BE (\'Donation Certificate) required by you for claiming deduction under section 80G of Income Tax Act 1961. Donation Certificate shall be issued at the end of the relevant financial year, within the stipulated time as may be prescribed under applicable laws Please refer to the link: https://www.feedingindia.org/terms/donor for detailed terms & conditions and timelines for issuance of Donation Certificates.',
                  style: card4,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _panController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            width: 0.1, color: Colors.grey.shade500)),
                    hintText: 'Enter PAN card number',
                    hintStyle: textfield,
                  ),
                  validator: (PAN) {
                    if (PAN == null || PAN.isEmpty) {
                      return "Pan can't be empty";
                    }
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      isDense: true,
                      // contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                              width: 0.1, color: Colors.grey.shade200)),
                      hintText: 'Enter email id',
                      hintStyle: textfield),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter an email";
                    }
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(child: Text('Submit')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
