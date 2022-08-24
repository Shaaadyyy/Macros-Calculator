

import 'dart:math';

import 'package:flutter/material.dart';

import 'MacrosResultScreen.dart';

class MacrosHome extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _MacrosHomeState();

}

class _MacrosHomeState extends State<MacrosHome>
{

  double height = 120;
  int Calories = 1500;
  int weight = 70;

  double roundDouble(double value, int places){
    num mod = pow(10.0, places);
    return ((value * mod).round().toDouble() / mod);
  }


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Macros Calculator'
        ),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(

        color: Colors.grey[900],
        child: Column(
        children:
        [

            Expanded(
            child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
            [


            Container(
            child: Column(

            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            SizedBox(
            height: 5.0,
            ),
            Text('Calories', style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.normal,
            color: Colors.white
            ),
            ),
            SizedBox(
            height: 5.0,
            ),
            Text('${Calories}', style: TextStyle(
            fontSize: 35.0,
            fontWeight: FontWeight.normal,
            color: Colors.white
            ),
            ),
            Padding(
            padding: const EdgeInsets.all(30.0),
            child: Row(
            children: [

          FloatingActionButton(onPressed: (){
            Calories--;
          },
          heroTag: 'Calories-',
          mini: true,
          child: Icon(
          Icons.remove
          ),
          ),
          SizedBox(
          width: 40.0,
          ),
          FloatingActionButton(onPressed: (){
            Calories++;
          },
          heroTag: 'Calories+',
          mini: true,
          child: Icon(
          Icons.add
          ),
          )
          ],
          ),
          )
          ],
          ),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[800],
            border: Border.all(color: Colors.black, width: 1.5)
            ),

            ),

            ],
            ),
            ),
            ),
            Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                [


                  Container(
                    child: Column(

                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('Weight', style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                        ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('${weight}', style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Row(
                            children: [
                              FloatingActionButton(onPressed: (){
                                weight--;
                              },
                                heroTag: 'Weight-',
                                mini: true,
                                child: Icon(
                                    Icons.remove
                                ),
                              ),
                              SizedBox(
                                width: 40.0,
                              ),
                              FloatingActionButton(onPressed: (){
                                weight++;
                              },
                                heroTag: 'Weight+',
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.grey[800],
                        border: Border.all(color: Colors.black, width: 1.5)
                    ),

                  ),

                ],
              ),
            ),
          ),

            /*
            Expanded(
              child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('WEIGHT', style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                        ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text('${weight.round()}', style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.white
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 15.0,
                              ),
                              FloatingActionButton(onPressed: (){
                                weight--;
                              },
                                heroTag: 'weight-',
                                mini: true,
                                child: Icon(
                                    Icons.remove
                                ),
                              ),
                              SizedBox(
                                width: 25.0,
                              ),
                              FloatingActionButton(onPressed: (){
                                weight++;
                              },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.black, width: 1.5),
                      color: Colors.grey[800],
                    ),
                  )
                ],
              ),
          ),
            ),
*/


            Container(
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ButtonTheme(
          minWidth: 180.0,
          height: 40.0,
          child: RaisedButton(
          onPressed: ()
          {
          double protein = weight * 2;
          double carbs = Calories / 8;
          double fats = (Calories * 0.3) / 9;
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=> MacrosResultScreen(
          Calories: Calories,
          weight: weight,
          carbs: roundDouble(carbs,2),
          protein: roundDouble(protein,2),
          fats: roundDouble(fats,2),
          )
          )
          );
          },
          color: Colors.pink,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)),
          child: Text("CALCULATE",
          style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
          fontWeight: FontWeight.bold
          ),
            ),
            ),
            ),
            ),
            )

        ],
        ),
      ),
    );
  }
}