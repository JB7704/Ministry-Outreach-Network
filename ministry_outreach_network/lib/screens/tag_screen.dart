import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum MinistryFilter { Hunger, Literacy, Stability, Health}

class TagScreen extends StatelessWidget {
  const TagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('FilterChip Sample', style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black) )),
        body: const FilterChipExample(),
      ),
    );
  }
}

class FilterChipExample extends StatefulWidget {
  const FilterChipExample({super.key});

  @override
  State<FilterChipExample> createState() => _FilterChipExampleState();
}

class _FilterChipExampleState extends State<FilterChipExample> {
  Set<MinistryFilter> filters = <MinistryFilter>{};

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: <Widget>[
          Text('Choose a ministry', style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black) ),
          const SizedBox(height: 5.0),
          Wrap(
            spacing: 5.0,
            children: MinistryFilter.values.map((MinistryFilter ministry) {
              return FilterChip(
                label: Text(ministry.name),
                selected: filters.contains(ministry),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      filters.add(ministry);
                    } else {
                      filters.remove(ministry);
                    }
                  });
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Looking for: ${filters.map((MinistryFilter m) => m.name).join(', ')}',
            style: GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black) ,
          ),
        ],
      ),
    );
  }
}