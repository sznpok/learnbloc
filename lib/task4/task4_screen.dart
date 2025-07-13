import 'package:basiclearnbloc/task4/bloc/uppercase_lowercase_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Task4Screen extends StatelessWidget {
  const Task4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UppercaseLowercaseBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('UpperCase LowerCase Page')),
        body: BlocBuilder<UppercaseLowercaseBloc, UppercaseLowercaseState>(
          builder: (ctx, state) {
            String text = '';
            if (state is UppercaseLowercaseInitial) {
              text = state.initialText;
            }
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      ctx.read<UppercaseLowercaseBloc>().add(
                        const UppercaseChangedEvent('SUSMITA'),
                      );
                    },
                    child: Text('Uppercase'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      ctx.read<UppercaseLowercaseBloc>().add(
                        const LowercaseChangedEvent('susmita'),
                      );
                    },
                    child: Text('Lowercase'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
