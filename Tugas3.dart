void generateCombinations(String prefix, int n, List<String> chars) {
    if (prefix.length == n) {
      print(prefix);
      return;
    }
    
  for (var char in chars) {
    generateCombinations(prefix + char, n, chars);
  }
}

void main() {
  int n = 3; // Jumlah karakter
  List<String> chars = ['a', 'b', 'c']; // Karakter yang digunakan
  generateCombinations("", n, chars);
}