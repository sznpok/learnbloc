import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_bloc.dart';
import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_event.dart';
import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_state.dart';
import 'package:basiclearnbloc/widgets/second_task_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirdTask extends StatefulWidget {
  const ThirdTask({super.key});

  @override
  State<ThirdTask> createState() => _ThirdTaskState();
}

class _ThirdTaskState extends State<ThirdTask> {
  final List<String> fruits = ['Apple', 'Mango', 'Banana'];
  String? selectedFruit;
  @override
  Widget build(BuildContext context) {
    final text = 'Hello Sir, How are you doing ? ';

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocBuilder<FirstTaskBloc, FirstTaskState>(
                builder: (context, state) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Text(
                      state.toChangeTextState,
                      style: TextStyle(fontSize: 25),
                    ),
                  );
                },
              ),
              SizedBox(height: 100),
              SecondTaskButtonWidget(
                title: 'Capitalize',
                func: () => {
                  context.read<FirstTaskBloc>().add(
                    ChangeToCapitalEvent(toCapitalTextEvent: text),
                  ),
                },
              ),
              SecondTaskButtonWidget(
                title: 'LowerCase',
                func: () => {
                  context.read<FirstTaskBloc>().add(
                    ChangeToLowerEvent(toLowerTextEvent: text),
                  ),
                },
              ),
              DropdownButton(
                // value: selectedValue;
                hint: Text('Choose from the options'),
                value: selectedFruit,
                items: fruits.map((fruit) {
                  return DropdownMenuItem<String>(
                    value: fruit,
                    child: Text(fruit),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedFruit = newValue;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
