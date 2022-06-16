import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  static const String routeName = '/result';
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();

}

class _ResultPageState extends State<ResultPage> {
  late double result;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Result'),),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Catagory',style: TextStyle(fontSize: 25, color: Colors.white),),
                  Text('BMI',style: TextStyle(fontSize: 25, color: Colors.white),),
                ],
              ),
            ),
            Container(
              height: 60,
              color: result<18.4? Colors.green : Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('under weight',),
                  Text('<18.4'),
                ],
              ),
            ),
            Container(
              height: 60,
              color: result>18.4 && result<24.9? Colors.green : Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('normal'),
                  Text('>18.4 & <24.9'),
                ],
              ),
            ),
            Container(
              height: 60,
              color: result>24.9? Colors.green : Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('over weight'),
                  Text('>24.9'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  void didChangeDependencies() {
    result = ModalRoute.of(context)!.settings.arguments as double;
    super.didChangeDependencies();
  }
}
