import 'package:flutter/material.dart';

//assignment 1

void main() {
  runApp(
    MaterialApp(
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
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.jpg',
                height: 200, // ความสูงของรูป
                width: 250, // ความกว้างของรูป
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
              const Text(
                'เรายินดีที่ได้เป็นส่วนหนึ่งในการเดินทางของคุณ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'สรุปรายละเอียดชาร์จ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0), 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'วันที่ซื้อ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          '9 กันยายน 2566',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'สาขา',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'บางจาก',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'เมนู',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'ลาเต้เย็น',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'รวมค่าบริการ',
                          style: TextStyle(
                            color: Color(0xFF5DF591),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '200.00 บาท',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF5DF591),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  debugPrint('Pressed Button');
                },
                child: const Text(
                  'จ่ายเงิน',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: const Icon(Icons.shopping_cart)),
      ),
    ),
  );
}

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(color: Color(0xFF5DF591)),
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('App Bar'),
//           leading: IconButton(
//             icon: const Icon(Icons.menu),
//             onPressed: () {
//               debugPrint('leading icon pressed');
//             },
//           ),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.shopping_cart),
//               onPressed: () {
//                 debugPrint('leading icon pressed');
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.info),
//               onPressed: () {
//                 debugPrint('leading icon pressed');
//               },
//             ),
//           ],
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               const Text('Hello World1'),
//               Image.network(
//                 'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0?fit=crop&w=500&q=80',
//                 height: 350, // ความสูงของรูป
//                 width: 350, // ความกว้างของรูป
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Image.asset('assets/images/woody.jpg'),
//               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   IconButton(
//                     icon: const Icon(Icons.favorite_border),
//                     onPressed: () {
//                       debugPrint('leading icon pressed');
//                     },
//                   ),
//                   const Icon(
//                     Icons.favorite,
//                     size: 40,
//                   ),
//                 ],
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   debugPrint('Pressed Button');
//                 },
//                 child: const Text(
//                   'Submit',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//             onPressed: () {}, child: const Icon(Icons.shopping_cart)),
//       ),
//     ),
//   );
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 198, 227, 9)),
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
//         useMaterial3: true,
//       ),
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text('App Bar'),
//           ),
//           body: const Column(
//             children: [
//               Text(
//                 'Hello World',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               Text('welcome'),
//             ],
//           )
//           ),
//     );
//   }
// }
