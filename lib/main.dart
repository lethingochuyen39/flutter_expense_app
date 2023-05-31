import 'package:flutter/material.dart';

import 'Screens/expense.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: const Expenses(),
  ));
}
