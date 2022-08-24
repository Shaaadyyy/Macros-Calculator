

import 'package:flutter/material.dart';

class MacrosResultScreen extends StatelessWidget
{

  late int weight;
  late int Calories;
  late double protein;
  late double carbs;
  late double fats;

  MacrosResultScreen({

    required this.Calories,
    required this.weight,
    required this.protein,
    required this.carbs,
    required this.fats
  });


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Macros Result',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Macros RESULT',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.underline
                  ),
                ),
                SizedBox(
                    height: 80.0
                ),
                Text(
                  'Calories:  ${Calories}',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                SizedBox(
                    height: 15.0
                ),
                Text(
                  'weight:  ${weight}',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                SizedBox(
                    height: 15.0
                ),
                Text(
                  'Protein:  ${protein}',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                SizedBox(
                    height: 15.0
                ),
                Text(
                  'Carbs:  ${carbs}',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                SizedBox(
                    height: 15.0
                ),
                Text(
                  'Fats:  ${fats}',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),


              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.black, width: 2.0),
              color: Colors.grey[800],
            ),
            width: double.infinity,
          ),

        ),
      )
    );
  }

}