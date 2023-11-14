import 'dart:io';

bool isPrime(int n) {
  if (n <= 1) return false;
  if (n <= 3) return true;

  if (n % 2 == 0 || n % 3 == 0) return false;

  int i = 5;
  while (i * i <= n) {
    if (n % i == 0 || n % (i + 2) == 0) return false;
    i += 6;
  }

  return true;
}

List<int> primesUntilN(int N) {
  List<int> primes = [];

  for (int i = 2; i <= N; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }

  return primes;
}

void main() {
  print("Bir sayı girin (N):");
  int? N = int.tryParse(stdin.readLineSync()!);
  
  if (N == null) {
    print("Geçerli bir sayı giriniz.");
    return;
  }

  print('$N\'e kadar olan asal sayılar: ${primesUntilN(N)}');
}
