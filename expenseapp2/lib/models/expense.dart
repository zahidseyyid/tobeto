//id = identifier = kimlik belirleyici
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { yemek, giyim, fatura, eglence, ulasim, alisveris, bakim, ev, hobi }

const categoryIcons = {
  Category.yemek: Icons.restaurant,
  Category.giyim: Icons.local_mall, 
  Category.fatura: Icons.receipt_long, 
  Category.eglence: Icons.movie_filter, 
  Category.ulasim: Icons.train, 
  Category.alisveris: Icons.shopping_basket, 
  Category.bakim: Icons.local_florist, 
  Category.ev: Icons.house,
  Category.hobi: Icons.sports_soccer, 
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