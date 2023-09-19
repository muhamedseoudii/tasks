import 'package:amoor1/toggleTheme/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeStates> {
  ThemeCubit() : super(ThemeStates());

  bool isOn = true;

  void OnThemeChange (bool value) {
    isOn = value;
    emit(ThemeModeState());
    // setState(() {});
  }
}
