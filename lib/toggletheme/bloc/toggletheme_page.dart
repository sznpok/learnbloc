import 'package:basiclearnbloc/toggletheme/bloc/light_darkmode_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TogglethemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Toggle Theme Page')),
      body: BlocBuilder<LightDarkmodeBloc, LightDarkmodeState>(
        builder: (ctx, state) {
          ThemeMode themeMode = ThemeMode.light;
          if (state is LightDarkmodeChanged) {
            themeMode = state.themeMode;
          }
          return Card(
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    ctx.read<LightDarkmodeBloc>().add(ToggleThemeEvent());
                  },
                  child: Icon(
                    themeMode == ThemeMode.light
                        ? Icons.light_mode
                        : Icons.dark_mode,
                  ),
                ),
                SizedBox(width: 5),
                Text('Toggle Theme'),
              ],
            ),
          );
        },
      ),
    );
  }
}
