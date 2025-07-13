import 'package:basiclearnbloc/task3/bloc/dropdown_bloc.dart';
import 'package:basiclearnbloc/task4/task4_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Task3Screen extends StatelessWidget {
  Task3Screen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DropdownBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('DropDown Value'), centerTitle: true),
        body: BlocBuilder<DropdownBloc, DropdownState>(
          builder: (ctx, state) {
            final items = ['Apple', 'Banana', 'Mango', 'Orange'];
            final selected = items.contains(state.initialValue)
                ? state.initialValue
                : null;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  hint: const Text('Select a fruit'),
                  value: selected,
                  items: items
                      .map(
                        (item) =>
                            DropdownMenuItem(value: item, child: Text(item)),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      ctx.read<DropdownBloc>().add(
                        DropDownValueChangedEvent(value),
                      );
                    }
                  },
                ),
                SizedBox(height: 20),

                Text(
                  state.initialValue.isEmpty
                      ? 'No selection yet'
                      : 'You selected: ${state.initialValue}',
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Task4Screen()),
                    );
                  },
                  child: Text('Next Page'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
