import 'package:flutter/material.dart';
import 'display_page.dart';
import 'welcome_page2.dart';

class AboutPages extends StatelessWidget {
  const AboutPages({super.key});

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
          IconButton(
            onPressed: () {
              debugPrint("Button pressed");
            },
            icon: const Icon(Icons.add_alert),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/display_page');
                debugPrint("ElevatedButton in AppBar pressed");
              },
              child: const Text('Display!'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  "Info",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Image.network(
                  "https://www.popticles.com/wp-content/uploads/2024/04/Amazon_The_Most_Valuable_Brands_2023.jpg",
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/welcome_page2');
                    },
                    child: const Text('Welcome page'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/display_page');
                    },
                    child: const Text('Display page'),
                  ),
                  IconButton(
                      icon: Icon(Icons.display_settings),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/display_page',
                        );
                      }),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
