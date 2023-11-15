import 'package:expense_app/data/dummy_data.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  List<Expense> expenses = dummyExpenses;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          return ExpenseItem(expense: expenses[index]);
        },
      ),
    );
  }
}