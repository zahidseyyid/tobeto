//id = identifier = kimlik belirleyici
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Expense {
  Expense({required this.name, required this.price, required this.date}) : id = uuid.v4();
  final String id;
  final String name;
  final double price;
  final DateTime date;
}

//id = 1,2,3,4,5

//String = uuid/guid 