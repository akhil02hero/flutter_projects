import 'package:expenses/expense/expenses_item.dart';
import 'package:expenses/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(this.expenseList,{ super.key }) ;

  final List<Expense> expenseList;

  @override
  Widget build(BuildContext context){
    return Expanded(
      child: ListView.builder(itemCount: expenseList.length,itemBuilder: (ctx,index) => ExpensesItem(expenseList[index],),
      ),
    );
    
  }
}