import 'dart:io';
import 'dart:math';

bool isArmstrong(int number) {
  int length = number.toString().length; 
  int sum = 0;
  int temp = number;

  while (temp > 0) {
    int digit = temp % 10;
    sum += pow(digit, length).toInt();
    temp ~/= 10;
  }

  return sum == number;
}

void main() {
  print('Bir sayı girin:');
  int? inputNumber = int.tryParse(stdin.readLineSync()!);

  if (inputNumber != null) {
    if (isArmstrong(inputNumber)) {
      print('$inputNumber bir Armstrong sayıdır.');
    } else {
      print('$inputNumber bir Armstrong sayı değildir.');
    }
  } else {
    print('Lütfen geçerli bir sayı girin.');
  }
}