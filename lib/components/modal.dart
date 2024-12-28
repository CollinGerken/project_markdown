import '/_imports.dart';

class Modal extends StatelessWidget {
  const Modal({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      backgroundColor: Colors.blue,
      content: SizedBox(
        height: 120,
        child: Column(
          children: [
            TextField(),
          ],
        ),
      ), 
    );
  }
}