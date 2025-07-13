import 'package:basiclearnbloc/task1/bloc/text_sync_bloc.dart';
import 'package:basiclearnbloc/task1/bloc/text_sync_event.dart';
import 'package:basiclearnbloc/task1/bloc/text_sync_state.dart';
import 'package:basiclearnbloc/task2/task2_screen.dart';
import 'package:basiclearnbloc/task4/bloc/uppercase_lowercase_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TextSync")),
      body: BlocBuilder<TextSyncBloc, TextSyncState>(
        builder: (ctx, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    ctx.read<TextSyncBloc>().add(TextChangedEvent(value));
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Text',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                Text(
                  state.text,
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),

                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Task2Screen()),
                    );
                  },
                  child: Text("Next Page"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
