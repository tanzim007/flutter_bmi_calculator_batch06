import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String routeName = '/second';
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late String msg;


  @override
  Widget build(BuildContext context) {
    print('initState called');

    return Scaffold(
      appBar: AppBar(title: const Text('Second Oage'),),
      body: Center(
        child: Text(msg),
      ),
    );
  }

  @override
  void initState() {

    print('initState called');
    super.initState();

  }

  @override
  void didChangeDependencies() {
    msg = ModalRoute.of(context)!.settings.arguments as String;
    super.didChangeDependencies();

  }
}
