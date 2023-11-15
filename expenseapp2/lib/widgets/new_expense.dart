import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _expenseNameController = TextEditingController();
  final _expensePriceController = TextEditingController();
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now()
          .subtract(const Duration(days: 365)), // 1 yıl öncesine kadar
      lastDate: DateTime.now(), // Bugüne kadar
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          TextField(
            controller: _expenseNameController,
            maxLength: 50,
            decoration: const InputDecoration(labelText: "Harcama Adı"),
          ),
          TextField(
            controller: _expensePriceController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: "Harcama Miktarı"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () => _selectDate(context),
              icon: const Icon(Icons.calendar_month),
            ),
          ),
          Text(
            selectedDate == null
                ? "Tarih Seçiniz"
                : DateFormat('dd.MM.yyyy').format(selectedDate!),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                // Tarihi formatlayarak bir string'e dönüştürün
                String formattedDate = selectedDate != null
                    ? DateFormat('dd.MM.yyyy').format(selectedDate!)
                    : "Tarih Seçilmedi";
          
                // Şimdi formattedDate değişkeni istediğiniz formatta
                print(
                    "Kaydedilen değer: ${_expenseNameController.text} ${_expensePriceController.text}TL $formattedDate");
              },
              child: const Text("Ekle"),
            ),
          )
        ],
      ),
    );
  }
}
