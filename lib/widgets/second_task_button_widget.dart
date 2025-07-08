import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_bloc.dart';
import 'package:basiclearnbloc/bloc_learning/firstTask/bloc/first_task_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondTaskButtonWidget extends StatelessWidget {
  final String? title;
  final Color? color;
  final void Function()? func;
  const SecondTaskButtonWidget({super.key, this.title, this.color, this.func});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: Size(200, 30),
          backgroundColor: color,
        ),
        onPressed:
            func ??
            () {
              context.read<FirstTaskBloc>().add(
                ColorChangeEvent(colorEvent: color),
              );
            },
        child: Text(title!),
      ),
    );
  }
}
