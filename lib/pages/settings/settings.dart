import '/_imports.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void showDialogBox() {
    showDialog(
      context: context,
      builder: (context) {
        return const Modal();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showDialogBox,
        child: const Icon(Icons.add),
      ),
      body: ListView(
          children: [
            CurrentSettings(appState: appState),
            Options(appState: appState),
            ElevatedButton(
              child: const Text('View Document Page'),
              onPressed: () { Navigator.pushNamed(context, 'document'); },
            ),
            ElevatedButton(
              child: const Text('Show Snackbar'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: Colors.yellow,
                    content: Text('This is a YELLOW snackbar message.')
                    ),
                  );
              },
            ),
          ]
        ),
    );
  }
}