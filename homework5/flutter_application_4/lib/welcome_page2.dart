import 'package:flutter/material.dart';

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({super.key});

  @override
  _WelcomePage2State createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  final _textController = TextEditingController();

  String displayText = 'Charging Data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            debugPrint("Leading clicked");
          },
          icon: const Icon(Icons.ev_station),
        ),
        title: const Text(
          'CS Hello About Page',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          // alert icon
          IconButton(
            onPressed: () {
              debugPrint("Button pressed");
            },
            icon: const Icon(Icons.add_alert),
          ),

          Container(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: ElevatedButton(
              onPressed: () {
                debugPrint("ElevatedButton in AppBar pressed");
              },
              child: const Text('Alert!'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  displayText,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText: 'Enter Your Data',
                  hintText: 'Type something...',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.keyboard),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  String input = _textController.text;
                  setState(() {
                    displayText = input;
                  });
                  debugPrint('Bug bt3 $input');
                },
                child: const Text('Button Show Input'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText = 'Test';
                  });
                  debugPrint('Bug bt');
                },
                child: const Text('Change Text'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText = 'Hello manassawin';
                  });
                  debugPrint('Bug bt2');
                },
                child: const Text('Button show'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
