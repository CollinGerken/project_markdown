import '/_imports.dart';

class AppState extends ChangeNotifier {
  AppState(){
      if (themeMode == ThemeMode.system) {
        selectedThemeMode = [true, false, false];
      } else if (themeMode == ThemeMode.light) {
        selectedThemeMode = [false, true, false];
      } else if (themeMode == ThemeMode.dark) {
        selectedThemeMode = [false, false, true];
      }
  }

  ThemeMode themeMode = ThemeMode.system;
  List<bool> selectedThemeMode = [false, false, false];

  void setTheme(int index) {
    selectedThemeMode = [false, false, false];
    selectedThemeMode[index] = true;
    switch (index) {
      case 0:
        themeMode = ThemeMode.system;
        break;
      case 1:
        themeMode = ThemeMode.light;
        break;
      case 2:
        themeMode = ThemeMode.dark;
        break;
    }
    notifyListeners();
  }
}