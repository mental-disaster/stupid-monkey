import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GFButton(
          text: "누르지마시오.",
          onPressed: () {
            print('home center button click');
          },
        ),
      ),
    );
  }
}
