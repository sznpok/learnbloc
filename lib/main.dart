import 'package:basiclearnbloc/counter/bloc/counter_bloc.dart';
import 'package:basiclearnbloc/counter/screens/counter_screen.dart';
import 'package:basiclearnbloc/task1/bloc/text_sync_bloc.dart';
import 'package:basiclearnbloc/task2/bloc/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TextSyncBloc()),
        BlocProvider(create: (context) => ColorBloc()),
        BlocProvider(create: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const CounterScreen(),
      ),
    );
  }
}
