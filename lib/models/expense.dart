import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

enum Category { food, travel, leisure, work }

const categoryIcon = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work
};

final formatter = DateFormat.yMd();

const uuid = Uuid();

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get formatedDate {
    return formatter.format(date);
  }
}
