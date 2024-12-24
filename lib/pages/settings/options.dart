import '/_imports.dart';

class Options extends StatelessWidget {
  const Options({
    super.key,
    required this.appState,
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      onPressed: (int index) {
          appState.setTheme(index);
      },
      isSelected: appState.selectedThemeMode,
      children: const [
        ToggleButton(label: 'System'), 
        ToggleButton(label: 'Light'), 
        ToggleButton(label: 'Dark'), 
      ], 
    );
  }
}