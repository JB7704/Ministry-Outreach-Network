import 'package:flutter/material.dart';

class ChurchWidget extends StatelessWidget {
  final String church;

  const ChurchWidget(this.church);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(church),
      ),
    );
  }
}