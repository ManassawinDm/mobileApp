import 'package:flutter/material.dart';

//assignment 2

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: const AppBarTheme(color: Color(0xFF5DF591)),
      colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF5DF591)),
      useMaterial3: true,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Star Buck'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('leading icon pressed');
          },
        ),
      ),
      body: PaymentScreen(),
    ),
  ));
}

class PaymentScreen extends StatefulWidget {
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  final TextEditingController currentSoc = TextEditingController();
  final TextEditingController targetSoc = TextEditingController();
  final TextEditingController chrgingRate = TextEditingController();
  final TextEditingController voltage = TextEditingController();
  final TextEditingController chrgingPower = TextEditingController();
  final TextEditingController batCapacity = TextEditingController();
  final TextEditingController efficiency = TextEditingController();
  String _result = '';

  void _calculateTotal() {
  final String currentSocText = currentSoc.text;
  final String targetSocText = targetSoc.text;
  final String chargingRateText = chrgingRate.text;
  final String voltageText = voltage.text;
  final String chargingPowerText = chrgingPower.text;
  final String batteryCapacityText = batCapacity.text;
  final String efficiencyText = efficiency.text;

  if (currentSocText.isNotEmpty &&
      targetSocText.isNotEmpty &&
      chargingRateText.isNotEmpty &&
      voltageText.isNotEmpty &&
      chargingPowerText.isNotEmpty &&
      batteryCapacityText.isNotEmpty &&
      efficiencyText.isNotEmpty) {
    final double? currentSocValue = double.tryParse(currentSocText);
    final double? targetSocValue = double.tryParse(targetSocText);
    final double? chargingRateValue = double.tryParse(chargingRateText);
    final double? voltageValue = double.tryParse(voltageText);
    final double? chargingPowerValue = double.tryParse(chargingPowerText);
    final double? batteryCapacityValue = double.tryParse(batteryCapacityText);
    final double? efficiencyValue = double.tryParse(efficiencyText);

    if (currentSocValue != null &&
        targetSocValue != null &&
        chargingRateValue != null &&
        voltageValue != null &&
        chargingPowerValue != null &&
        batteryCapacityValue != null &&
        efficiencyValue != null &&
        efficiencyValue > 0) {
      double energyNeeded = (targetSocValue - currentSocValue) * batteryCapacityValue / 100;
      double chargingTime = energyNeeded / (chargingPowerValue * efficiencyValue);

      if (chargingTime > 0) {
        setState(() {
          _result = 'Charging Time: ${chargingTime.toStringAsFixed(2)} hours';
        });
      } else {
        setState(() {
          _result = 'กรุณาตรวจสอบค่าที่กรอก ค่าชาร์จไม่สมเหตุสมผล';
        });
      }
    } else {
      setState(() {
        _result = 'กรุณากรอกตัวเลขที่ถูกต้อง';
      });
    }
  } else {
    setState(() {
      _result = 'กรุณากรอกข้อมูลให้ครบ';
    });
  }
}


  @override
Widget build(BuildContext context) {
  return Center(
    child: SingleChildScrollView( // ใช้ ScrollView
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/logo.jpg',
            height: 200,
            width: 250,
          ),
          const Text(
            'ขอบคุณที่ใช้บริการ',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: currentSoc,
                  decoration: const InputDecoration(
                    labelText: 'กรอกจำนวน currentSoc',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: targetSoc,
                  decoration: const InputDecoration(
                    labelText: 'กรอกจำนวน targetSoc',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: chrgingRate,
                  decoration: const InputDecoration(
                    labelText: 'กรอกจำนวน chrgingRate',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: voltage,
                  decoration: const InputDecoration(
                    labelText: 'กรอกจำนวน voltage',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: chrgingPower,
                  decoration: const InputDecoration(
                    labelText: 'กรอกจำนวน chrgingPower',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: batCapacity,
                  decoration: const InputDecoration(
                    labelText: 'กรอกจำนวน batCapacity',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: efficiency,
                  decoration: const InputDecoration(
                    labelText: 'กรอกจำนวน efficiency',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _calculateTotal,
                  child: const Text(
                    'คำนวณ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  _result,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
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