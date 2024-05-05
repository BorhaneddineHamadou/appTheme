part of 'theme_bloc.dart';

@immutable
abstract class ThemeState extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ThemeInitial extends ThemeState {}

class LoadedThemeState extends ThemeState{
  final ThemeData themeData;

  LoadedThemeState({required this.themeData});
  @override
  // TODO: implement props
  List<Object?> get props => [themeData];
}