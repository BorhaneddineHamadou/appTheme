import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themesproject/core/theme/bloc/theme_bloc.dart';
import 'package:themesproject/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
        create: (context) => ThemeBloc()..add(GetCurrentThemeEvent()),
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state){
            if(state is LoadedThemeState){
              return MaterialApp(
                title: 'Flutter Demo',
                theme: state.themeData,
                home: const HomeScreen(),
              );
            }
            return Container();
          },
        ),
    );
  }
}


