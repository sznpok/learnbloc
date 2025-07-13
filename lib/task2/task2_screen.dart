import 'package:basiclearnbloc/task2/bloc/color_bloc.dart';
import 'package:basiclearnbloc/task3/task3_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Task2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text2 Screens')),
      body: BlocBuilder<ColorBloc, ColorState>(
        builder: (context, state) {
          final color = (state as ColorInitial).initialColor;
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 50, width: 50, color: color),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context.read<ColorBloc>().add(
                    ColorChangedEvent(Colors.green),
                  );
                },
                child: Text('Change to green'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context.read<ColorBloc>().add(
                    ColorChangedEvent(Colors.yellow),
                  );
                },
                child: Text('Change to yellow'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context.read<ColorBloc>().add(
                    ColorChangedEvent(Colors.purple),
                  );
                },
                child: Text('Change to purple'),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Task3Screen()),
                  );
                },
                child: Text('Next Page'),
              ),
            ],
          );
        },
      ),
    );
  }
}
