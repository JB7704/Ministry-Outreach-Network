import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //how to access fonts

class ChurchWidget extends StatelessWidget {
  final String church;

  const ChurchWidget(this.church);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(church, style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black) ),
      ),
    );
  }
}