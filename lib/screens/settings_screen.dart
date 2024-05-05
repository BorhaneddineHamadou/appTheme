import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themesproject/core/theme/bloc/theme_bloc.dart';

import '../core/theme/app_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: AppTheme.values.length,
          itemBuilder: (context, index){
            final itemAppTheme = AppTheme.values[index];
            return Card(
              color: appThemeData[itemAppTheme]!.primaryColor,
              child: ListTile(
                title: Text(
                    itemAppTheme.name,
                    style: appThemeData[itemAppTheme]!.textTheme.titleMedium,
                ),
              onTap: (){
                  context.read<ThemeBloc>().add(ThemeChangedEvent(theme: itemAppTheme));
              },
              ),
            );
          }
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}