import 'package:figma/widgets/brandColors.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {

  final VoidCallback ?onPress;
  final String ?name;
  final Color ?bgColor, borderColor;
  RoundButton({this.onPress,this.name,this.bgColor,this.borderColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPress,


      height: 56,
      minWidth: MediaQuery.of(context).size.width - 16,
      child: Text("$name",style: TextStyle(fontSize: 17,color: shadaColor,fontWeight: FontWeight.w700),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28),side: BorderSide(width: 1.5,color: borderColor??Colors.transparent)),

      color: bgColor ?? Color(0xff246BFD),


    );
  }
}