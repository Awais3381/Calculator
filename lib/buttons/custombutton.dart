import 'package:flutter/material.dart';

class customButton extends StatelessWidget {
  final String buttonText;
  final buttontextColor;
  final wholeColor;
  final tapclick;
  customButton({this.buttonText="",this.buttontextColor,this.wholeColor,this.tapclick});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapclick,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          margin: EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
          padding: EdgeInsets.only(left: 10,right: 10),
          color: wholeColor,
          child: Center(
            child: Text(buttonText,style: TextStyle(color: buttontextColor,fontSize: 20),),
          ),
        ),
      ),
    );
  }
}
