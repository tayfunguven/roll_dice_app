import 'package:flutter/material.dart';

class CustomImageRow extends StatefulWidget {
  final int diceImageNo1;
  final int diceImageNo2;
  final double imageWidth;

  //Default constructor with required two dice image numbers arguments and image width as an optional argument
  const CustomImageRow(this.imageWidth, {super.key, required this.diceImageNo1, required this.diceImageNo2,});

  //Custom constructor for setting an image width
  const CustomImageRow.defaultImageSettings({super.key, required this.diceImageNo1, required this.diceImageNo2}) :
      imageWidth = 200;

  @override
  State<CustomImageRow> createState() => _CustomImageRowState();
}

class _CustomImageRowState extends State<CustomImageRow> {
  @override
  Widget build(BuildContext context) {
    //We are building a row to display two images next to each.
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/dice-${widget.diceImageNo1}.png', width: widget.imageWidth,),
        Image.asset('assets/images/dice-${widget.diceImageNo2}.png', width: widget.imageWidth,),
      ],
    );
  }
}
