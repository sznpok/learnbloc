import 'package:basiclearnbloc/counter/bloc/counter_bloc.dart';
import 'package:basiclearnbloc/counter/bloc/counter_event.dart';
import 'package:basiclearnbloc/counter/bloc/counter_state.dart';
import 'package:basiclearnbloc/task1/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen Page')),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${state.count}'),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Increment());
                      },
                      child: Text('Increment'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Decrement());
                      },
                      child: Text('Decrement'),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => MyHomePage()),
                    );
                  },
                  child: Text('Next Page'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
