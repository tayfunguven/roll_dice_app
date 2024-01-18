import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final List<Color> colors;
  final List<Alignment> alignments;
  final Widget item;

  /*Default constructor of CustomContainer class which requires item parameter to be compiled
  But the other fields can be either null or given.*/
  const CustomContainer(this.colors, this.alignments, {super.key, required this.item});

  /*Custom constructor with the method 'defaultConfig()' which also requires item parameter.
  But the 'colors' and 'alignments' arguments given with the default values.
  So, if we do not assign new values to them, the constructor uses defaults*/
  CustomContainer.defaultConfig({super.key, required this.item}) :
      colors = [Colors.blueGrey, Colors.greenAccent],
      alignments = [Alignment.topLeft, Alignment.bottomRight];

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {

  @override
  Widget build(BuildContext context) {
    //We build our CustomContainer with given arguments
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: widget.alignments[0],
          end: widget.alignments[1]
        ),
      ),
      child: Center(
        child: widget.item
      ),
    );
  }
}