import 'package:basiclearnbloc/counter/bloc/counter_bloc.dart';
import 'package:basiclearnbloc/sijan_sir_assignment/dropdown/presentation/bloc/dropdown_value_display_next_widget_bloc.dart';
import 'package:basiclearnbloc/sijan_sir_assignment/dropdown/presentation/screens/dropdown_screen.dart';
import 'package:basiclearnbloc/task1/bloc/text_sync_bloc.dart';
import 'package:basiclearnbloc/task2/bloc/color_bloc.dart';
import 'package:basiclearnbloc/toggletheme/bloc/light_darkmode_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LightDarkmodeBloc()),
        BlocProvider(create: (_) => TextSyncBloc()),
        BlocProvider(create: (context) => ColorBloc()),
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (_) => DropdownValueDisplayNextWidgetBloc()),
        // BlocProvider(create: (context) => TodoWithoutStateBloc()),
        // BlocProvider(create: (context) => TodoWithStateBloc()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LightDarkmodeBloc, LightDarkmodeState>(
      builder: (context, state) {
        ThemeMode themeMode = ThemeMode.light; // default to light mode
        if (state is LightDarkmodeChanged) {
          themeMode = state.themeMode;
        }
        return ScreenUtilInit(
          designSize: Size(600, 700),
          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeMode,
            home: const DropdownScreen(),
          ),
        );
      },
    );
  }
}
