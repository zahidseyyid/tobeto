//id = identifier = kimlik belirleyici
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { yemek, giyim, fatura, eglence, ulasim, alisveris, bakim, ev, hobi }

const categoryIcons = {
  Category.yemek: Icons.food_bank,
  Category.giyim: Icons.checkroom,
  Category.fatura: Icons.payment,
  Category.eglence: Icons.nightlife,
  Category.ulasim: Icons.directions_car,
  Category.alisveris: Icons.shopping_cart,
  Category.bakim: Icons.spa,
  Category.ev: Icons.home,
  Category.hobi: Icons.palette,
};

class Expense {
  Expense({required this.name, required this.price, required this.date, required this.category}) : id = uuid.v4();
  final String id;
  final String name;
  final double price;
  final DateTime date;
  final Category category;
  // belirli kategoriler
  // enum
}

//id = 1,2,3,4,5

//String = uuid/guid 