import 'package:expense_app/pages/expenses_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: ExpensesPage(),
    ),
  ));
}
// modelleme