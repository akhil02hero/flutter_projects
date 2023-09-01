import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
const ExpensesItem(this.expense,{ super.key });
final Expense expense;
  @override
  Widget build(BuildContext context){
    return Card(
      child: Row(
        children: <Widget>[
          const Icon(Icons.fastfood),
          Column(
            children: <Widget>[
              Text(expense.title),
               Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(Icons.currency_rupee_sharp),
                      Text('${expense.amount}'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.calendar_month),
                      Text('${expense.date}'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}