import 'package:flutter/material.dart';

import 'Screens/expense.dart';

// void main() {
//   runApp(MaterialApp(
//     theme: ThemeData(useMaterial3: true, debugShowCheckedModeBanner: false),
//     home: const Expenses(),
//   ));
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const Expenses(),
    );
  }
}
