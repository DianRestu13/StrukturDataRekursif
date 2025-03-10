import 'dart:io';

void generateCombinations(String characters, String current, int n) {
  if (current.length == n) {
    print(current);
    return;
  }

  for (int i = 0; i < characters.length; i++) {
    generateCombinations(characters, current + characters[i], n);
  }
}

void main() {
  stdout.write("Masukkan jumlah karakter: "); // Minta input jumlah karakter 
  int n = int.parse(stdin.readLineSync()!);
  
  stdout.write("Masukkan karakter untuk kombinasi: "); // Minta input kumpulan karakter
  String characters = stdin.readLineSync()!;

  print("Semua kombinasi dengan panjang $n:");
  generateCombinations(characters, "", n);
}