import 'dart:io';

void main() {
  //untuk mendklarasikan menu dengan tipe map
Map<String, Map<String, dynamic>> menu = {
  'D': {'jenis': 'Dada', 'harga': 2500},
  'P': {'jenis': 'Paha', 'harga': 2000},
  'S': {'jenis': 'Sayap', 'harga': 1500},
};
print("GEROBAK FRIED CHICKEN                 ");
print("--------------------------------------");
print("Kode       Jenis       Harga          ");
print("--------------------------------------");
print("D          Dada        Rp. 2.500,00   ");
print("P          Paha        Rp. 2.000,00   ");
print("S          Sayap       Rp. 1.500,00   ");
print("--------------------------------------");

//digunakan untuk menampilkan output tanpa membahkan baris baru setelahnya
stdout.write("Banyak Jenis:");
int banyakJenis = int.parse(stdin.readLineSync()!);

List<Map<String, dynamic>> pembelian = [];

for (int i = 0; i < banyakJenis; i++) {
  print('Jenis ke-${i + 1}');

  stdout.write('Jenis Potongan [D/P/S]:');
  String jenis = stdin.readLineSync()!.toUpperCase();

if (!menu.containsKey(jenis)) {
  print('Kode jenis tidak valid! Silahkan masukkan ulang.');
}
while (!menu.containsKey(jenis));

stdout.write('Banyak Potongan: ');
int banyakPotong=int.parse(stdin.readLineSync()!);

pembelian.add({
  'jenis': menu[jenis]!['jenis'],
  'harga': menu [jenis]!['harga'],
  'banyak': banyakPotong,
  'jumlah_harga': banyakPotong*menu [jenis]! ['harga'],
});
}
// menampilkan daftar pembelian
print('                  GEROBAK FRIED CHICKEN               ');
print('------------------------------------------------------');
print('No. Jenis Potong Harga Satuan Banyak Beli Jumlah Harga');
print('------------------------------------------------------');

int totalBayar = 0;
for (int i = 0; i < pembelian.length; i++) {
   var item = pembelian[i];
    print(
      '${i + 1}.     ${item['jenis']}      Rp. ${item['harga']},00    ${item['banyak']}     Rp. ${item['jumlah_harga']},00');
    
        totalBayar += item['jumlah_harga'] as int;
}
int pajak = (totalBayar * 10) ~/ 100;
int totalBayarAkhir = totalBayar + pajak;

print('------------------------------------------------------');
print('               Jumlah Bayar          Rp.$totalBayar,00');
print('               Pajak 10%             Rp.$pajak,00     ');
print('               Total Bayar           Rp.$totalBayarAkhir,00');
}