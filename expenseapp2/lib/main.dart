import 'package:flutter/material.dart';
import 'package:expense_app/constants/theme.dart'; 
import 'package:expense_app/pages/main_page.dart'; 

void main() {
  runApp(MaterialApp(
    theme: appThemeData,  
    debugShowCheckedModeBanner: false, 
    home: const MainPage(),
  ));
}
