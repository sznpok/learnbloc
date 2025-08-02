import 'package:basiclearnbloc/counter/bloc/counter_bloc.dart';
import 'package:basiclearnbloc/counter/bloc/counter_event.dart';
import 'package:basiclearnbloc/counter/bloc/counter_state.dart';
import 'package:basiclearnbloc/counter/widgets/bottom_navbar_widget.dart';
import 'package:basiclearnbloc/task1/my_home_page.dart';
import 'package:basiclearnbloc/todoapp/without%20state/presentation/screens/todo_without_state_screen.dart';
import 'package:basiclearnbloc/todoapp/withstate/presentation/screens/todo_with_state_screen.dart';
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
            child: SingleChildScrollView(
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

                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MyHomePage()),
                      );
                    },
                    child: Text('Next Page'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TodoWithoutStateScreen(),
                        ),
                      );
                    },
                    child: Text('Next Page Without State in Bloc'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TodoWithStateScreen(),
                        ),
                      );
                    },
                    child: Text('Next Page with State in Bloc'),
                  ),
                  SizedBox(height: 10),
                  BottomNavBar(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
