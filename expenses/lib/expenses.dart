import 'package:expenses/expense/expenses_list.dart';
import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  _ExpensesState createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> expenses = [
    Expense(
      "Shawarma",
      200,
      DateTime.now(),
      Category.food,
    ),
    Expense(
      "Flutter Course",
      389,
      DateTime.now(),
      Category.learning,
    ),
    Expense(
      "Coorg Trip",
      5000,
      DateTime.now(),
      Category.travel,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Text("Expenses"),
          ExpensesList(expenses),
        ],
      ),
    );
  }
}
