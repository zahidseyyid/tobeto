import 'dart:io';

int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

void main() {
  print("Faktöriyelini hesaplamak için bir sayı girin:");
  
  int? number = int.tryParse(stdin.readLineSync()!);
  
  if (number == null || number < 0) {
    print("Lütfen geçerli ve pozitif bir sayı giriniz.");
    return;
  }
  
  print('$number! = ${factorial(number)}');
}
