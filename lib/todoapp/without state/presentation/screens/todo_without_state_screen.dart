import 'package:basiclearnbloc/todoapp/without%20state/presentation/bloc/todo_without_state_bloc.dart';
import 'package:basiclearnbloc/todoapp/withstate/presentation/screens/todo_with_state_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoWithoutStateScreen extends StatefulWidget {
  const TodoWithoutStateScreen({super.key});

  @override
  State<TodoWithoutStateScreen> createState() => _TodoWithoutStateScreenState();
}

class _TodoWithoutStateScreenState extends State<TodoWithoutStateScreen> {
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoWithoutStateBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(title: Text('Todo App Without State Screen')),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: textController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Write Something here',
                            hintText: 'Add here',
                          ),
                          maxLength: 30,
                        ),
                      ),
                      SizedBox(width: 8.w),
                      IconButton(
                        onPressed: () {
                          final text = textController.text.trim();
                          if (text.isNotEmpty) {
                            context.read<TodoWithoutStateBloc>().add(
                              AddTodoEvent(text),
                            );
                            textController.clear();
                          }
                        },
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.h),

                Expanded(
                  child: BlocBuilder<TodoWithoutStateBloc, List<String>>(
                    builder: (context, state) {
                      return ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(title: Text(state[index]));
                        },
                        separatorBuilder: (context, index) =>
                            Divider(height: 2, color: Colors.black),
                        itemCount: state.length,
                      );
                    },
                  ),
                ),
                SizedBox(height: 15.h),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => TodoWithStateScreen()),
                    );
                  },
                  child: Text('Go to Todo With State'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
