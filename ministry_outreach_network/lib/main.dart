import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ministry_outreach_network/dataconnect_generated/generated.dart';
import 'package:ministry_outreach_network/screens/home_screen.dart';
import 'package:ministry_outreach_network/screens/search_screen.dart';
import 'package:ministry_outreach_network/screens/church_screen.dart';
import 'package:ministry_outreach_network/screens/tag_screen.dart';


void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ministry Outreach Network',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFFE4002B),       // main color
        onPrimary: Color(0xFFFFFFFF),     // Text/icons on primary
        secondary: Color(0xFF319966),     //  green color
        onSecondary: Color(0xFFFFFFFF),   
        surface: Color(0xFFFFFFFF),       //  white color
        onSurface: Color(0xFF231F20),     //  black color (for text)
        error: Color(0xFFE4002B),
        onError: Color(0xFFFFFFFF),
      ),
        cardColor: const Color(0xFFCCCCCC),
      ),
      home: const HomeScreen(),
    );
  }
}