import 'package:flutter/material.dart';

class ChurchScreen extends StatelessWidget {
  const ChurchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Church Screen')),
      body: Column(
        children[
          const Text('Church Id here'),
          const Text('Church Name here'),
          const Text('Church Address here'),
          const Text('Church Hunger here'),
          const Text('Church Literacy here'),
          const Text('Church Stability here'),
          const Text('Church Health here'),
          const Text('Church Worship Time here'),
          const Text('Church Livestream here'),
        ],
      ),
    )
  }
}