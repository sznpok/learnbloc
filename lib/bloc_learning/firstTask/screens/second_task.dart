import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_bloc.dart';
import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_state.dart';
import 'package:basiclearnbloc/bloc_learning/firstTask/screens/first_task.dart';
import 'package:basiclearnbloc/widgets/second_task_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondTask extends StatelessWidget {
  const SecondTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Task')),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                BlocBuilder<FirstTaskBloc, FirstTaskState>(
                  builder: (context, state) {
                    return Container(
                      height: 100,
                      width: 200,
                      color: state.colorState,
                    );
                  },
                ),
                SizedBox(height: 50),
                Text('Choose the right color for the box: '),
                SecondTaskButtonWidget(title: 'Red', color: Colors.red),
                SecondTaskButtonWidget(title: 'Blue', color: Colors.blue),
                SecondTaskButtonWidget(title: 'yellow', color: Colors.yellow),
                SecondTaskButtonWidget(title: 'green', color: Colors.green),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
