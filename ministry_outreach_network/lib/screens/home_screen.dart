import 'package:flutter/material.dart';
import 'package:ministry_outreach_network/widgets/church_widget.dart';
import 'package:ministry_outreach_network/screens/tag_screen.dart';
import 'package:ministry_outreach_network/screens/search_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  //final String title;

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  List<String> churches = [
  'United', 
  'Methodist',
  'Arkansas',
  ];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: .center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Number of Churches ${churches.length}',    //ADD NUMBER OF CHURCHES RETURNED
                style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black) )
              ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return TagScreen();
                  },
                ));
              },
              child: Text('Filter by Criteria', style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black) ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return SearchScreen();
                  },
                ));
              },
              child: Text('Search by Name',style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black)  ),
            ),
            Expanded(
              child: ListView(
                children: churches.map((item) {
                  return ChurchWidget(item);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

