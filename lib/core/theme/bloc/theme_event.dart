part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class GetCurrentThemeEvent extends ThemeEvent{}

class ThemeChangedEvent extends ThemeEvent{
  final AppTheme theme;
  ThemeChangedEvent({required this.theme});

  @override
  // TODO: implement props
  List<Object?> get props => [theme];
}