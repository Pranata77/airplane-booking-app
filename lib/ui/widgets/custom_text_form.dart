import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    Key? key,
    required this.title,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);

  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: kPrimaryDarkColor,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            cursorColor: kPrimaryColor,
            obscureText: obscureText,
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defaultRadius,
                ),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
