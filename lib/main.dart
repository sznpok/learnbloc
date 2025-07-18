import 'package:basiclearnbloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_event.dart';
import 'bloc/counter_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    print("Building MyHomePage widget");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(title),
      ),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  obscureText: state.passwordVisibility,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter password",
                    suffixIcon: IconButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(
                          TogglePasswordVisibilityEvent(),
                        );
                      },
                      icon: Icon(
                        state.passwordVisibility
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
                const Text('You have pushed the button this many times:'),
                Text(
                  '${state.count}',
                  style: Theme.of(
                    context,
                  ).textTheme.headlineMedium!.copyWith(color: Colors.blue),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterBloc>().add(IncrementEvent());
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      /*bottomNavigationBar: ElevatedButton(
        onPressed: () {},
        child: Text("button"),
      ), */
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
