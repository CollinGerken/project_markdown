import '../_imports.dart';

class AppState extends ChangeNotifier {
  AppState(){
      if (themeMode == ThemeMode.system) {
        isSelected = [true, false, false];
      } else if (themeMode == ThemeMode.light) {
        isSelected = [false, true, false];
      } else if (themeMode == ThemeMode.dark) {
        isSelected = [false, false, true];
      }
  }

  List<bool> isSelected = [
    false, 
    false, 
    false];

  ThemeMode themeMode = ThemeMode.light;

  void setSystemTheme() {
    themeMode = ThemeMode.system;
    notifyListeners();
  }
  void setLightTheme() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }
  void setDarkTheme() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  void setState(int index) {
    isSelected = [false, false, false];
    isSelected[index] = true;
    switch (index) {
      case 0:
        setSystemTheme();
        break;
      case 1:
        setLightTheme();
        break;
      case 2:
        setDarkTheme();
        break;
    }
    notifyListeners();
  }
}