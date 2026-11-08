import 'package:flutter/material.dart';
import 'package:ministry_outreach_network/widgets/church_widget.dart';
import 'package:ministry_outreach_network/screens/tag_screen.dart';
import 'package:ministry_outreach_network/screens/search_screen.dart';
import 'package:ministry_outreach_network/screens/church_screen.dart';

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
  List<String> churches = ['United', 'Methodist', 'Arkansas'];
  final SearchController controller = SearchController();
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
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // title: Text(widget.title),
        title: Image.asset(
          "assets/images/white_banner.jpeg",
          width: 256,
          height: 256,
        ),
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
                'Number of Churches ${churches.length}', //ADD NUMBER OF CHURCHES RETURNED
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                SearchAnchor(
                  searchController: controller,
                  builder: (BuildContext context, SearchController controller) {
                    return IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {
                        controller.openView();
                      },
                    );
                  },
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                        return List<ListTile>.generate(5, (int index) {
                          final String item = 'item $index';
                          return ListTile(
                            title: Text(item),
                            onTap: () {
                              setState(() {
                                controller.closeView(item);
                              });
                            },
                          );
                        });
                      },
                ),
                Center(
                  child: controller.text.isEmpty
                      ? const Text('No item selected')
                      : Text('Selected item: ${controller.value.text}'),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      useSafeArea: true,
                      builder: (context) {
                        TagScreen tagScreen = TagScreen();

                        final screenSize = MediaQuery.of(context).size;
                        final dialogSize = (
                          screenSize.width * 0.85,
                          screenSize.height * 0.85,
                        );

                        return Dialog(
                          // Prevents the background alert container from expanding infinitely
                          child: SizedBox(
                            width: screenSize.width,
                            height: screenSize.height,
                            child: tagScreen,
                          ),
                        );
                      }
                    );
                  },
                  child: const Text('Filter by Criteria'),
                ),
              ]
            ),
            
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: Text('Example Church 1'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return ChurchScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Example Church 2'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return ChurchScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text('Example Church 3'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return ChurchScreen();
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
