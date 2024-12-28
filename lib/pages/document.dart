import '/_imports.dart';

class Box {
  Box(this.label, this.number);

  final String label;
  final int number;
}

class Document extends StatelessWidget {
  Document({super.key});
  final List<Box> items = [
      Box('one', 1),
      Box('two', 2),
      Box('three', 3),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Text(items[index].label),
              Text(items[index].number.toString()),
            ],
          );
        }
      ),
    );
  }
}