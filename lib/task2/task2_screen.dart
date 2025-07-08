import 'package:basiclearnbloc/task2/bloc/color_bloc.dart';
import 'package:basiclearnbloc/task2/bloc/color_event.dart';
import 'package:basiclearnbloc/task2/bloc/color_state.dart';
import 'package:basiclearnbloc/task3/task3_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Task2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Color Change on Button Click")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          BlocBuilder<ColorBloc, ColorState>(
            builder: (context, state) {
              final color = (state as ColorInitial).color;
              return Container(height: 200, width: 200, color: color);
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<ColorBloc>().add(ChangeColorEvent(Colors.red));
            },
            child: Text("Change to Red"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              context.read<ColorBloc>().add(ChangeColorEvent(Colors.green));
            },
            child: Text("Change to Green"),
          ),
          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Task3Screen()),
              );
            },
            child: Text("Next Page"),
          ),
        ],
      ),
    );
  }
}
