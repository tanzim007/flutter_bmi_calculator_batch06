import 'package:flutter/material.dart';

import 'result_page.dart';
import 'second_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double weightValue = 70;
  double heightValue = 1.70;
  double result = 0;
  String f = '';
  String msgResultt = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(height: 50,),
                  Text('Weight', style: TextStyle(fontSize: 30, color: Colors.blueGrey),),
                  SizedBox(height: 10,),
                  Text('${weightValue.round().toString()} KG', style: TextStyle(fontSize: 20, color: Colors.black),),
                  Slider(
                      min: 20,
                      max: 120,
                      divisions: 100,
                      label: weightValue.round().toString(),
                      value: weightValue,
                      onChanged: (value) {
                        setState(() {
                          weightValue = value;
                          calculation();
                          // msgResult();
                        });
                      }),
                  SizedBox(height: 100,),
                  Text('Height', style: TextStyle(fontSize: 30, color: Colors.blueGrey),),
                  SizedBox(height: 10,),
                  Text('${heightValue.toStringAsFixed(2).toString()} m', style: TextStyle(fontSize: 20, color: Colors.black),),
                  Slider(
                      min: 1.2,
                      max: 2.2,
                      divisions: 100,
                      label: heightValue.toStringAsFixed(2).toString(),
                      value: heightValue,
                      onChanged: (value) {
                        setState(() {
                          heightValue = value;
                          calculation();
                          // msgResult();
                        });
                      }),
                  SizedBox(height: 30,),
                  Container(
                    height: 100,
                    width: 100,
                    child: Center(
                      child: Text(
                        '$f',
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 30,),
                  if(result < 18.4)
                    Text('Underweight', style: TextStyle(fontSize: 25, color: Colors.green),)
                  else if(result > 16 && result < 24.9)
                    Text('normal', style: TextStyle(fontSize: 25, color: Colors.blue),)
                  else if(result > 24.9)
                      Text('overweight', style: TextStyle(fontSize: 25, color: Colors.red),),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20),
              child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, ResultPage.routeName, arguments: result)
                  , child: Text('View Result', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),)),
            )

          ],
        ),
      ),
    );
  }


  calculation(){
    result = (weightValue / (heightValue*heightValue));
    f = result.toStringAsFixed(2);
  }
}

