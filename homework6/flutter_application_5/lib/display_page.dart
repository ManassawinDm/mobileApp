import 'package:flutter/material.dart';

class DisplayPage extends StatefulWidget {
  final String name;
  final int? age;

  const DisplayPage({super.key, required this.name, this.age});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Display Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Hi, ${widget.name}! \n ou are ${widget.age} years old.',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Go Back'),
              ),
          ],
        ),
      ),
    );
  }
}
