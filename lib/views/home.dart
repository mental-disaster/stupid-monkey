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
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GFButton(
            text: "입력",
            onPressed: () async {
              int id = await SampleController.to.create();
              print(id);
            },
          ),
          const SizedBox(width: 10),
          GFButton(
            text: "출력",
            onPressed: () async {
              List<TodoItem> items = await SampleController.to.findAll();
              for (TodoItem item in items) {
                print(item);
              }
            },
          ),
          const SizedBox(width: 10),
          GFButton(
            text: "삭제",
            onPressed: () async {
              int deletedCount = await SampleController.to.deleteAll();
              print(deletedCount);
            },
          ),
        ],
      )),
    );
  }
}
