import 'package:flutter/material.dart';
import 'package:roll_dice_app/custom_container.dart';
import 'package:roll_dice_app/custom_button.dart';
import 'package:roll_dice_app/custom_image_row.dart';
import 'dart:math';

void main() {
  //Running the app's first Widget
  runApp(const MyApp());
}

/*Defined as StatelessWidget since nothing can
be changed either user interaction or data changes or etc.*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          shadowColor: Colors.black,
          elevation: 2,
          title: const Text(
            'Roll a Dice!',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: const MyAppsBody(),
      ),
    );
  }
}

/*Instead, we define a custom widget, which will be changed with the
user interaction, as StatefulWidget*/
class MyAppsBody extends StatefulWidget {
  const MyAppsBody({super.key});

  @override
  State<MyAppsBody> createState() => _MyAppsBodyState();
}

class _MyAppsBodyState extends State<MyAppsBody> {
  //Assigning initial values to variables
  var numberOne = 1;
  var numberTwo = 1;

  //Initialize an Object from Random class
  Random random = Random();

  void randomNumber() {
    //Default state management function to update UI by Dart
    setState(() {
      //Reassigning numbers with the random values
      numberOne = random.nextInt(6)+1;
      numberTwo = random.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    //We use the 'defaultConfig()' constructor of our CustomContainer
    return CustomContainer.defaultConfig(
      //item is the required argument that we have to pass it to our CustomContainer
      item: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageRow.defaultImageSettings(diceImageNo1: numberOne, diceImageNo2: numberTwo),
          const SizedBox(height: 30,),
          CustomElevatedButton.defaultStyle(onPressed: randomNumber,),
        ],
      ),
    );
  }
}


