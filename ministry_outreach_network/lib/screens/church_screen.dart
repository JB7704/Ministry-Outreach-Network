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
     
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Name
              const Text(
                  'Church Name Here',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(height: 8),
              
              // ID
              const Text(
                  'Church ID: 12345',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),

                // Address
                const Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text('Church Address Here'),

                const SizedBox(height: 20),

                const Text('Hunger: Available'),
                const Text('Literacy: Available'),
                const Text('Stability: Available'),
                const Text('Health: Available'),

                const SizedBox(height: 20),

                // Worship Information
                const Text(
                  'Worship Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text('Worship Time: Sunday 10:00 AM'),
                const Text('Livestream: Available'),
            ],
          ),
        ),
      ),
    );
  }
}