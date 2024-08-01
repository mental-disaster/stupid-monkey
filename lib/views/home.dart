import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:stupid_monkey/controllers/sample_controller.dart';
import 'package:stupid_monkey/db/database.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GFButton(
          text: "누르지마시오.",
          onPressed: () async {
            TodoItem? data = await SampleController.to.insertAndFind();
            if (data != null) {
              print(data.title);
            } else {
              print("is null");
            }
          },
        ),
      ),
    );
  }
}