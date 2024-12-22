import '../_imports.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
            Padding(
              padding: const EdgeInsets.all(80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Current Theme:',
                    style : TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${appState.themeMode}',
                    style : const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
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