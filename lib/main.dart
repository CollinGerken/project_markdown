import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: const MainApp(),
    ),
  );
}

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);

class AppState extends ChangeNotifier {
  List<bool> isSelected = [false, false, false];
  ThemeMode themeMode = ThemeMode.system;

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

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: appState.themeMode,
        home: SettingsPage(),
      );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Current Theme: ${appState.themeMode}'),
            ToggleButtons(
              onPressed: (int index) {
                  appState.setState(index);
              },
              isSelected: appState.isSelected,
              children: const [
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text('System'),
                  ), 
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text('Light'),
                ), 
                Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text('Dark'),
              )], 
            ),
          ]
        ),
      ),
    );
  }
}