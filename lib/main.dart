import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator_batch06/pages/home_page.dart';
import 'package:flutter_bmi_calculator_batch06/pages/result_page.dart';
import 'package:flutter_bmi_calculator_batch06/pages/second_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName:(context)=>HomePage(),
        SecondPage.routeName: (context)=> SecondPage(),
        ResultPage.routeName: (context)=> ResultPage(),

      },
    );
  }
}
