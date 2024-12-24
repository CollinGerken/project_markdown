import 'package:project_markdown/_imports.dart';

class ToggleButton extends StatelessWidget {
  final String label;

  const ToggleButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text(label),
    );
  }
}