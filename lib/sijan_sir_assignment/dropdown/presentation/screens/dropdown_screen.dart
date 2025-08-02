import 'package:basiclearnbloc/sijan_sir_assignment/dropdown/models/dropdown_model.dart';
import 'package:basiclearnbloc/sijan_sir_assignment/dropdown/presentation/bloc/dropdown_value_display_next_widget_bloc.dart';
import 'package:basiclearnbloc/sijan_sir_assignment/searchtextfield/presentation/screen/searchtext_field_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DropdownScreen extends StatefulWidget {
  const DropdownScreen({super.key});

  @override
  State<DropdownScreen> createState() => _DropdownScreenState();
}

class _DropdownScreenState extends State<DropdownScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DropdownValueDisplayNextWidgetBloc>().add(
      GetAllDropdownsEvent(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown Screen')),
      body:
          BlocBuilder<
            DropdownValueDisplayNextWidgetBloc,
            DropdownValueDisplayNextWidgetState
          >(
            builder: (ctx, state) {
              if (state.status == FetchDropdownStatus.initial) {
                return Center(child: CircularProgressIndicator());
              }
              if (state.status == FetchDropdownStatus.failure) {
                return Center(child: Text('Error to display dropdown'));
              }
              if (state.dropDownValues.isEmpty) {
                return Center(child: Text('No values is there'));
              }
              DropdownModel selectedItem = state.dropDownValues.firstWhere(
                (item) => item.id == state.dropdownID,
                orElse: () => state.dropDownValues.first,
              );
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<DropdownModel>(
                      hint: Text('Select one'),
                      items: state.dropDownValues.map((DropdownModel model) {
                        return DropdownMenuItem<DropdownModel>(
                          value: model,
                          child: Text(model.value),
                        );
                      }).toList(),
                      value: selectedItem,
                      onChanged: (DropdownModel? newValue) {
                        if (newValue != null) {
                          //selected Id update gareko state ma
                          ctx.read<DropdownValueDisplayNextWidgetBloc>().add(
                            UpdateIDEvent(dropdownID: newValue.id),
                          );
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Selected Item:${selectedItem.value}',
                      style: TextStyle(fontSize: 16),
                    ),

                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => SearchtextField()),
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
