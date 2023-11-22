import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_app/data/dummy_data.dart';
import 'package:expense_app/widgets/expense_item.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  Expense? _recentlyDeletedExpense;
  int? _recentlyDeletedExpenseIndex;

  void _removeExpense(int index) {
    setState(() {
      _recentlyDeletedExpense = dummyExpenses[index];
      _recentlyDeletedExpenseIndex = index;
      dummyExpenses.removeAt(index);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${_recentlyDeletedExpense!.name} silindi'),
          action: SnackBarAction(
            label: 'Geri Al',
            onPressed: () => _undoDelete(),
          ),
        ),
      );
    });
  }

  void _undoDelete() {
    if (_recentlyDeletedExpense != null &&
        _recentlyDeletedExpenseIndex != null) {
      setState(() {
        dummyExpenses.insert(
            _recentlyDeletedExpenseIndex!, _recentlyDeletedExpense!);
        _recentlyDeletedExpense = null;
        _recentlyDeletedExpenseIndex = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dummyExpenses.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey(dummyExpenses[index]),
            onDismissed: (direction) {
              print(dummyExpenses[index].name + " silindi");
              _removeExpense(index);
            },
            child: ExpenseItem(expense: dummyExpenses[index]),
          );
        },
      ),
    );
  }
}
