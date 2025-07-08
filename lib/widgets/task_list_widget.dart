import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TaskListWidget extends StatelessWidget {
  final String title;
  final Widget Function()? func;
  const TaskListWidget({super.key, required this.title, this.func});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        hoverColor: Colors.amberAccent,
        tileColor: Colors.blueGrey,
        splashColor: Colors.limeAccent,
        title: Text(title, style: TextStyle(fontSize: 20)),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => func!()),
          );
        },
      ),
    );
  }
}
  // return ElevatedButton(

    //   onPressed: func,
    //   child: Center(child: Text(title, style: TextStyle(fontSize: 10))),
    // );