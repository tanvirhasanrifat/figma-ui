import 'package:figma/widgets/brandColors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  //const CustomTextField({ Key? key }) : super(key: key);

  final TextEditingController? controller;
  final String ? hintText, labelText;
  final IconData ? iconData;
  final dynamic prefixIcon, keyboardType, formatter;
  final int? maxLine;
  final dynamic ? validator;
  final bool ? obsecure;

  const CustomTextField({Key? key, this.controller, this.hintText, this.labelText, this.iconData, this.prefixIcon, this.keyboardType, this.maxLine, this.validator, this.obsecure, this.formatter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: formatter,
      maxLines: maxLine ??1,

      validator: validator,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: hintText,

        hintStyle: myStyle(16,BrandColors.colorTextLight),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
                color: BrandColors.colorTextLight,width: 1.5
            )
        ),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
                color: BrandColors.colorTextLight,width: 1.5
            )
        ),
      ),
    );
  }
}