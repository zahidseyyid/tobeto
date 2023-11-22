import 'package:expense_app/constants/colors.dart'; 
import 'package:flutter/material.dart';
import 'package:expense_app/models/expense.dart';
import 'package:intl/intl.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem({Key? key, required this.expense}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final theme = Theme.of(context);

    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        title: Text(
          expense.name,
          style: theme.textTheme.titleLarge, 
        ),
        subtitle: Text(
          "${expense.price} ₺",
          style: theme.textTheme.titleMedium, 
        ),
        trailing: Text(
          DateFormat('dd.MM.yyyy').format(expense.date),
          style: theme.textTheme.titleMedium, 
        ),
        leading: CircleAvatar(
          backgroundColor: circleColor, 
          child: Icon(categoryIcons[expense.category], color: iconColor), 
        ),
      ),
    );
  }
}
