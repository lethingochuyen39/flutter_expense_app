import 'package:expense_app/Screens/expense_list.dart';
import 'package:expense_app/Screens/new_expense.dart';
import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _expenses = [
    Expense(
      title: 'Fluter Course',
      amount: 19.9,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.9,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _addExpense(Expense expense) {
    setState(() {
      _expenses.add(expense);
    });
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (context) => NewExpense(
        onAddExpense: _addExpense,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Teacker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(children: [
        const Text('The chart'),
        //truyền cái list vào
        Expanded(
          child: ExpensesList(expenses: _expenses),
        ),
      ]),
    );
  }
}
