import 'package:flutter/material.dart';

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
            icon: const Icon(Icons.ev_station)),
        title: 
        
        const Text(
          'CS Hello About Page',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Balance checked");
              },
              icon: const Icon(Icons.account_balance_wallet_outlined)),
          IconButton(
              onPressed: () {
                debugPrint("Info clicked");
              },
              icon: const Icon(Icons.info_outline)),
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
                  "Charging Data",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Image.network(
                  "https://cdn.grange.co.uk/assets/new-cars/lamborghini/revuelto/revuelto-1_20241107093150469.png",
                  height: 150,
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your Current SOC (%)',
                    hintText: 'Current SOC'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
