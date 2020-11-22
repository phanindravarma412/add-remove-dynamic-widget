import 'package:flutter/material.dart';
import 'styles.dart';

class InputRectangleField extends StatelessWidget {
  InputRectangleField({
    @required this.placeholder,
    this.requiredLines,
    this.textInputType,
    this.onChanged,
    this.controller,
    this.validator,
  });
  final String placeholder;
  final int requiredLines;
  final TextInputType textInputType;
  final Function onChanged;
  final TextEditingController controller;
  final Function validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: validator,
        controller: controller,
        onChanged: onChanged,
        maxLines: requiredLines ?? 1,
        keyboardType: textInputType ?? TextInputType.text,
        style: kUserTitleStyle.copyWith(fontWeight: FontWeight.w400),
        decoration:
            kInputRectangleFieldDecoration.copyWith(hintText: "$placeholder"),
      ),
    );
  }
}
