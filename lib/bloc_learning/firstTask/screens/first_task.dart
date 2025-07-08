import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_bloc.dart';
import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_event.dart';
import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstTask extends StatelessWidget {
  const FirstTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 100),
              Text(
                'The onChanged text is shown below: ',
                style: TextStyle(fontSize: 20),
              ),
              BlocBuilder<FirstTaskBloc, FirstTaskState>(
                builder: (context, state) {
                  return Text(
                    state.typedMessageState,
                    style: TextStyle(fontSize: 24, color: Colors.red),
                  );
                },
              ),
              Divider(),
              SizedBox(height: 30),
              TextField(
                onChanged: (value) {
                  context.read<FirstTaskBloc>().add(
                    ValueChangeEvent(newMessageEvent: value),
                  );
                },
                decoration: InputDecoration(
                  labelText: 'Enter any text: ',

                  hintText: 'Enter any text: ',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
