import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
const ExpensesList(this.expenseList,{ super.key }) ;

  final List<Expense> expenseList;

  @override
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Text("The Chart"),
        ExpensesList(expenseList),
      ],
    );
  }
}