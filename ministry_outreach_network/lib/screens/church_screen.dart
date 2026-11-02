import 'package:flutter/material.dart';

class ChurchScreen extends StatelessWidget {
  const ChurchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Church Screen'),
      ),
      body: Column(
        children: <Widget>[
          Text('Church Id here'),
          Text('Church Name here'),
          Text('Church Address here'),
          Text('Church Hunger here'),
          Text('Church Literacy here'),
          Text('Church Stability here'),
          Text('Church Health here'),
          Text('Church Worship Time here'),
          Text('Church Livestream here'),
        ],
      ),
    );
  }
}