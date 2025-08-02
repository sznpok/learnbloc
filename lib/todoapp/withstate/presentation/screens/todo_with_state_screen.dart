import 'package:basiclearnbloc/todoapp/withstate/presentation/bloc/todo_with_state_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoWithStateScreen extends StatefulWidget {
  const TodoWithStateScreen({super.key});

  @override
  State<TodoWithStateScreen> createState() => _TodoWithStateScreenState();
}

class _TodoWithStateScreenState extends State<TodoWithStateScreen> {
  final TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoWithStateBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(title: Text('Todo App With State Screen')),
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
                            context.read<TodoWithStateBloc>().add(
                              AddTodoEventWithState(text),
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
                  child: BlocBuilder<TodoWithStateBloc, TodoWithStateState>(
                    builder: (context, state) {
                      List<String> todos = [];
                      if (state is TodoWithStateChanged) {
                        todos = state.todos;
                      }
                      return ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(title: Text(todos[index]));
                        },
                        separatorBuilder: (context, index) =>
                            Divider(height: 2, color: Colors.black),
                        itemCount: todos.length,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
